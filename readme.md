Registers browserify-ied nodejs core modules to bower (via their name), to make them easily available to browsers.

It creates the local & github repos, saves the contents & registers with bower if needed.

Some deps were already taken in bower (we'll [try to reclaim them](http://bower-registry-editor.spalger.com/)).

Current status (run `$ coffee source/checkBowerDeps.coffee`):
```
[checkBowerDeps] : Checking #0: 'fs'
[checkBowerDeps] WARNING: git://github.com/matthewp/fs.git
[checkBowerDeps] : Checking #1: 'events'
[checkBowerDeps] WARNING: git://github.com/gburghardt/events.git
[checkBowerDeps] : Checking #2: 'util'
[checkBowerDeps] : git://github.com/anodynos/node2web_util.git
[checkBowerDeps] : Checking #3: 'http'
[checkBowerDeps] : git://github.com/anodynos/node2web_http.git
[checkBowerDeps] : Checking #4: 'path'
[checkBowerDeps] : git://github.com/anodynos/node2web_path.git
[checkBowerDeps] : Checking #5: 'child_process'
[checkBowerDeps] : git://github.com/anodynos/node2web_child_process.git
[checkBowerDeps] : Checking #6: 'crypto'
[checkBowerDeps] : git://github.com/anodynos/node2web_crypto.git
[checkBowerDeps] : Checking #7: 'string_decoder'
[checkBowerDeps] : git://github.com/anodynos/node2web_string_decoder.git
[checkBowerDeps] : Checking #8: 'timers'
[checkBowerDeps] : git://github.com/anodynos/node2web_timers.git
[checkBowerDeps] : Checking #9: 'tls'
[checkBowerDeps] ERRor: Package not found.
[checkBowerDeps] : Checking #10: 'domain'
[checkBowerDeps] : git://github.com/anodynos/node2web_domain.git
[checkBowerDeps] : Checking #11: 'buffer'
[checkBowerDeps] : git://github.com/anodynos/node2web_buffer.git
[checkBowerDeps] : Checking #12: 'net'
[checkBowerDeps] : git://github.com/anodynos/node2web_net.git
[checkBowerDeps] : Checking #13: 'dgram'
[checkBowerDeps] : git://github.com/anodynos/node2web_dgram.git
[checkBowerDeps] : Checking #14: 'dns'
[checkBowerDeps] : git://github.com/anodynos/node2web_dns.git
[checkBowerDeps] : Checking #15: 'stream'
[checkBowerDeps] : git://github.com/anodynos/node2web_stream.git
[checkBowerDeps] : Checking #16: 'https'
[checkBowerDeps] : git://github.com/anodynos/node2web_https.git
[checkBowerDeps] : Checking #17: 'querystring'
[checkBowerDeps] : git://github.com/anodynos/node2web_querystring.git
[checkBowerDeps] : Checking #18: 'punycode'
[checkBowerDeps] WARNING: git://github.com/bestiejs/punycode.js.git
[checkBowerDeps] : Checking #19: 'readline'
[checkBowerDeps] : git://github.com/anodynos/node2web_readline.git
[checkBowerDeps] : Checking #20: 'url'
[checkBowerDeps] WARNING: git://github.com/georgealways/url.js.git
[checkBowerDeps] : Checking #21: 'repl'
[checkBowerDeps] : git://github.com/anodynos/node2web_repl.git
[checkBowerDeps] : Checking #22: 'vm'
[checkBowerDeps] : git://github.com/anodynos/node2web_vm.git
[checkBowerDeps] : Checking #23: 'assert'
[checkBowerDeps] WARNING: git://github.com/jgallen23/assert
[checkBowerDeps] : Checking #24: 'tty'
[checkBowerDeps] : git://github.com/anodynos/node2web_tty.git
[checkBowerDeps] : Checking #25: 'zlib'
[checkBowerDeps] : git://github.com/anodynos/node2web_zlib.git
[checkBowerDeps] : Checking #26: 'os'
[checkBowerDeps] : git://github.com/anodynos/node2web_os.git
[checkBowerDeps] : Checking #27: 'cluster'
[checkBowerDeps] : git://github.com/anodynos/node2web_cluster.git
[checkBowerDeps] : Checking #28: 'module'
[checkBowerDeps] WARNING: git://github.com/fnando/module.git
[checkBowerDeps] : Checking #29: 'console'
[checkBowerDeps] : git://github.com/anodynos/node2web_console.git
[checkBowerDeps] : Checking #30: 'sys'
[checkBowerDeps] : git://github.com/anodynos/node2web_sys.git
[checkBowerDeps] : Checking #31: 'constants'
[checkBowerDeps] : git://github.com/anodynos/node2web_constants.git
[checkBowerDeps] : Checking #32: 'freelist'
[checkBowerDeps] ERRor: Package not found.
```

Also 'tls' & 'freelist' dont currently work on browserify.