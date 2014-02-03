DEPS =

  nodeAll: [
    'fs', 'events', 'util', 'http', 'path', 'child_process'
    'crypto', 'string_decoder', 'timers', 'tls'
    'domain', 'buffer', 'net', 'dgram', 'dns', 'stream'
    'https', 'querystring', 'punycode', 'readline', 'url'
    'repl', 'vm', 'assert', 'tty', 'zlib', 'os', 'cluster'
    'module', 'console', 'sys', 'constants', 'freelist'
  ]

  bowerTaken:
    # https://github.com/bower/bower/issues/120
    # http://bower-registry-editor.spalger.com/
    fs: "git://github.com/matthewp/fs.git"                # mimicking OK ? Its dummy in browserify
    events: "git://github.com/gburghardt/events.git"      # asked to release / turnover
    punycode: "git://github.com/bestiejs/punycode.js.git" # OK - its the same stuff
    url: "git://github.com/georgealways/url.js.git"       # asked to release / turnover
    assert: "git://github.com/jgallen23/assert"           # asked to release / turnover
    module: "git://github.com/fnando/module.git"          # asked to release / turnover. Its dummy in browserify, is it needed ?

  dummy:  [
    'fs', 'module', 'child_process',
    'cluster', 'net', 'dgram', 'dns',
    'readline', 'repl', 'module'
  ]

  notSupported: ['tls', 'freelist' ]

  supported : [ # https://github.com/substack/node-browserify#compatibility
    'assert', 'buffer', 'console', 'constants',
    'crypto', 'domain', 'events', 'http', 'https',
    'os', 'path', 'punycode', 'querystring', 'stream',
    'string_decoder', 'timers', 'tty', 'url',
    'util', 'vm', 'zlib'
  ]

module.exports = DEPS
