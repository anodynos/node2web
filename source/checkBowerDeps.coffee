_ = (_B = require 'uberscore')._
_.mixin (require 'underscore.string').exports()
l = new _B.Logger 'checkBowerDeps', 1

nodefn = require("when/node/function")
sequence = require('when/sequence')
wExec = nodefn.lift require("child_process").exec

DEPS = require './DEPS'

getCheckBowerDepTask = (dep, i)-> ->
  l.verbose "Checking ##{i}: '#{dep}'"
  wExec("bower lookup #{dep}").then (stdout)->
    out = _.trim stdout.join ''
    if out.indexOf('Package not found.') >= 0
      l.er out
    else
      out = _.trim out[dep.length..].replace('\n', '')
      if _.startsWith out, 'git://github.com/anodynos/'
        l.ok out
      else
        l.warn out

sequence(getCheckBowerDepTask dep, i for dep, i in DEPS.nodeAll).catch (err)-> l.er err

