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
    fs: "git://github.com/matthewp/fs.git"                # mimicking OK ? ask to release / turnover
    events: "git://github.com/gburghardt/events.git"      # lame - ask to release / turnover
    punycode: "git://github.com/bestiejs/punycode.js.git" # OK - its the same stuff
    url: "git://github.com/georgealways/url.js.git"       # lame - ask to release / turnover
    assert: "git://github.com/jgallen23/assert"           # Hmm use a chai.assert shim ? or better ask to release / turnover
    module: "git://github.com/fnando/module.git"          # Is it needed ? skip it ? # or better ask to release / turnover

  notSupported: ['tls', 'freelist']

module.exports = DEPS