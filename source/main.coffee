###
  pseudo code:

  get newest node core modules and forEach:

    get the local repo updated/cloned/inited
    if remoteRepoExists
      if localRepoExists
        git fetch (with tags)
      else
        git clone
    else
      git create remote repo
      if not localRepoExists # first run
        create local repo dir
        git init
        git set remote repo

    # save latest version
    if git tags dont have currentVersion
      save "#{dep}.js" & "#{dep}.min.js"
      save bower.json
      save readme.md
      git add & commit
      git tag version
      git push to remote (with tags)

    register to bower (if not already taken)
###
# @todo: Save a `.min.js` also using uglify2
# @todo: Allow overwritting of tag version (with flag)
# @todo: refactor into more functions

_ = (_B = require 'uberscore')._
_.mixin (require 'underscore.string').exports()
l = new _B.Logger 'bower-node-browserify', 1
path = require 'path'

os = require 'os'

UglifyJS2 = require 'uglify-js'
browserify = require 'browserify'

# promises
When = require 'when'
sequence = require('when/sequence')
qfs = require("q-io/fs");
nodefn = require("when/node/function")
logPromise = require('./logPromise') l

wExec = nodefn.lift require("child_process").exec
wLogExec = logPromise wExec, 'exec', 'stdout', 'stderr'

r = require 'requestify'

DEPS = require './DEPS'

localRepoPath = (dep)-> "../module_repos/" + if dep then "node2web_#{dep}" else ""

# todo: ask in CLI or some json file ?
forceVersionTag = false
gitUser = "anodynos"
gitPassword = null
throw "No gitPassword set" if not gitPassword

# can't browserify via APIi with {standalone} & streams https://github.com/deepak1556/gulp-browserify/issues/9
browserifyDep = (dep, options)->
  options = {standalone: dep} if not options
  tempDepHeadPath = path.join os.tmpdir(), "#{dep}_head.js"
  qfs.write(tempDepHeadPath, "module.exports = require('#{dep}');" ).then ->
    b = browserify tempDepHeadPath
    nodefn.call(b.bundle.bind(b), options).then (src)->
      qfs.remove(tempDepHeadPath).then -> src

remoteRepoApiUrl = (dep)-> "https://api.github.com/repos/#{gitUser}/node2web_#{dep}"

remoteRepoUrl = (dep, user='', passwd='')->
  auth =
    if user then user + (if passwd then ":#{passwd}" else '') + '@'
    else ''
  "https://#{auth}github.com/#{gitUser}/node2web_#{dep}"

readJson = (fn)-> qfs.read(fn).then JSON.parse, ->{}

git_tagList = (dep)->
  wExec('git tag -l', cwd: localRepoPath dep).then (stdout)->
    tags = []
    for o in stdout when o
      tags.push tag for tag in o.split('\n') when tag
    tags

git_push = (dep)->
  wLogExec("git push #{remoteRepoUrl dep, gitUser, gitPassword} master --tags -f", cwd: localRepoPath dep)

git_commitTag = (dep, tag)->
  wLogExec("""
    git add .
    git commit -m "browserify version '#{tag}'"
    git tag #{tag} -f
  """, cwd: localRepoPath dep)

# read version of node, browserify etc
cmd_version = (cmd='node')-> wExec("#{cmd} -v").then (stdout)-> _.trim stdout[0].replace '\n', ''

# using browserify as API, not CLI
getBrowserifyVersion = -> readJson('../node_modules/browserify/package.json').then (pkg)-> pkg.version

# @param dep {String}
# @resolve false if dep is not bower registered
#          the repo name if its registered
bower_lookup = (dep)->
  wExec("bower lookup #{dep}").spread (out)->
    if _.startsWith out, 'Package not found.'
      false
    else
      _.trim out[dep.length..].replace('\n', '')

bower_register = (dep)->
  bower_lookup(dep).then (foundRepo)->
    if not foundRepo
      l.verbose "Registering with bower: '#{dep}' = '#{remoteRepoUrl dep}'"
      wLogExec("bower register #{dep} #{remoteRepoUrl dep}", cwd: localRepoPath dep).then ->
        l.ok "Success: bower register #{dep} #{remoteRepoUrl dep}"
    else
      if _.startsWith foundRepo, 'git://github.com/anodynos/'
        l.ok "Already bower registered: '#{dep}' = '#{foundRepo}'"
      else
        l.warn "bower registration is taken: '#{dep}' = '#{foundRepo}'"      

handleDeps = (deps)->
  l.log 'deps to handle:', deps
  getBrowserifyVersion().then (version)->
    l.verbose "\nbrowserify (node_modules/browserify/package.json) version = '#{version}'"

    getDepTask = (dep)-> ->
      l.verbose "\nHandling dep = '#{dep}'"  
      localRepo = localRepoPath dep

      qfs.exists(localRepo).then (localRepoExists)->
        if localRepoExists then l.ok "local repo '#{localRepo}' exists"
        else l.warn "local repo '#{localRepo}' NOT exists"

        r.get(remoteRepoApiUrl dep, {auth: username:gitUser, password:gitPassword}).then(
          (resp)-> # remote exists
            l.ok "Remote repo '#{remoteRepoUrl dep}' exists"
            if localRepoExists
              wLogExec("git fetch -t", cwd: localRepo)
            else
              qfs.makeTree(localRepoPath()).then ->
                wLogExec("git clone #{remoteRepoUrl dep}", cwd:localRepoPath())

          (rej)->
            if rej.code isnt '404'
              l.er err = "Unknown github.com API error", rej
              throw new Error err
            else # remote not exists
              l.warn "Remote repo '#{remoteRepoUrl dep}' NOT exists - creating it"
              r.post('https://api.github.com/user/repos', { "name":"node2web_#{dep}"},
                      {auth: username:gitUser, password:gitPassword}
              ).then ->
                l.ok "Remote repo '#{remoteRepoUrl dep}' created"
                if not localRepoExists
                  qfs.makeTree(localRepo).then ->
                    wLogExec("""
                      git init
                      git remote add origin https://github.com/anodynos/node2web_#{dep}
                      """, cwd: localRepo).then ->
                        l.deb "Local repo '#{localRepo}' created."

          ).then( ->
            l.verbose "local & remote repos should both be in sync for '#{dep}'"
            git_tagList(dep).then (tags)->
              if forceVersionTag or (version not in tags)
                l.verbose "'#{dep}' tag version '#{version}' not exists - Generating & saving '#{dep}.js'."
                descr = """
                  '#{dep}' nodejs core module browserify-ied with `--standalone #{dep
                  }`. Should support all module systems (commonjs, AMD & `window.#{dep}`) - check browserify docs."""

                header = """
                  #{descr}

                  From [node2web](http://github.com/anodynos/node2web) collection,
                  should/will be exposed as '#{dep}' to [bower](http://bower.io) for *browser* usage.

                  browserify version: '#{version}', build date '#{new Date}'
                """

                save = (file, content)->
                  l.verbose "Saving file '#{file = path.join(localRepo, file)}'"
                  qfs.write file, content

                browserifyDep(dep).then (src)->
                  crap = '/mnt/tc/DevelopmentProjects/WebStormWorkspace/p/node2web/node_modules/browserify/node_modules/insert-module-globals/node_modules/process/browser.js'
                  src = src.replace new RegExp(crap, 'g'), 'process_browser'
                  pkgInfo = JSON.stringify {
                        name: dep
                        version: version
                        main: "#{dep}.min.js"
                        description: descr
                        keywords: ['nodejs', 'browserify', dep]
                      }, null, ' '

                  When.all([
                    save dep + '.js', "/** #{header} \n**/\n#{src}"
                    save dep + '.min.js', """/** '#{dep}' nodejs module minified for AMD, CommonJS & `window.#{dep}`. browserify v#{version} **/
                                             #{(UglifyJS2.minify src, {fromString: true}).code}"""
                    save 'readme.md', header
                    save 'bower.json', pkgInfo
                    save 'package.json', pkgInfo
                  ]).then ->
                    git_commitTag dep, version
              else
                l.verbose "Local repo already has a version tag '#{version}' for '#{dep}' - not saving/commiting anything."
          ).then ->
            sequence [ git_push, bower_register ], dep
    
    sequence(getDepTask dep for dep in deps).catch (err)-> l.er err

handleDeps (dep for dep in DEPS.nodeAll when (dep not in DEPS.notSupported) and (dep isnt 'http') )