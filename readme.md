Registers browserify-ied nodejs core modules to bower (via their name), to make them easily available to browsers.

It creates the local & github repos, saves the contents & registers with bower if needed.

Some deps were already taken in bower (we'll [try to reclaim them](http://bower-registry-editor.spalger.com/)).

# Latest browserify version (and repo's tag): '3.46.1'

# Current status (run `$ coffee source/checkBowerDeps.coffee`):

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

# Latest execution

```
/usr/utils/runXScript.sh main.coffee /mnt/tc/DevelopmentProjects/WebStormWorkspace/p/node2web/source coffee
  [bower-node-browserify] : deps to handle: [ 'fs',
  'events',
  'util',
  'path',
  'child_process',
  'crypto',
  'string_decoder',
  'timers',
  'domain',
  'buffer',
  'net',
  'dgram',
  'dns',
  'stream',
  'https',
  'querystring',
  'punycode',
  'readline',
  'url',
  'repl',
  'vm',
  'assert',
  'tty',
  'zlib',
  'os',
  'cluster',
  'module',
  'console',
  'sys',
  'constants' ]

  [bower-node-browserify] : browserify (node_modules/browserify/package.json) version = '3.46.1'

  [bower-node-browserify] : Handling dep = 'fs'
  [bower-node-browserify] : local repo '../module_repos/node2web_fs' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_fs' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_fs' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_fs
   6f94991..3995bfb  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'fs'
  [bower-node-browserify] : 'fs' tag version '3.46.1' not exists - Generating & saving 'fs.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_fs/fs.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_fs/fs.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_fs/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_fs/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_fs/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_fs' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 41623cd] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_fs master --tags -f { cwd: '../module_repos/node2web_fs' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_fs
   3995bfb..41623cd  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] WARNING: bower registration is taken: 'fs' = 'git://github.com/matthewp/fs.git'

  [bower-node-browserify] : Handling dep = 'events'
  [bower-node-browserify] : local repo '../module_repos/node2web_events' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_events' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_events' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_events
   b767ad1..1463ade  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'events'
  [bower-node-browserify] : 'events' tag version '3.46.1' not exists - Generating & saving 'events.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_events/events.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_events/events.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_events/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_events/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_events/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_events' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 7fc825e] browserify version '3.46.1'
 5 files changed, 11 insertions(+), 10 deletions(-)
 rewrite events.min.js (71%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_events master --tags -f { cwd: '../module_repos/node2web_events' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_events
   1463ade..7fc825e  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] WARNING: bower registration is taken: 'events' = 'git://github.com/gburghardt/events.git'

  [bower-node-browserify] : Handling dep = 'util'
  [bower-node-browserify] : local repo '../module_repos/node2web_util' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_util' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_util' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_util
   a0a7a41..27fb1ec  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'util'
  [bower-node-browserify] : 'util' tag version '3.46.1' not exists - Generating & saving 'util.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_util/util.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_util/util.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_util/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_util/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_util/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_util' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master c0fa7da] browserify version '3.46.1'
 5 files changed, 21 insertions(+), 9 deletions(-)
 rewrite util.min.js (87%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_util master --tags -f { cwd: '../module_repos/node2web_util' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_util
   27fb1ec..c0fa7da  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'util' = 'git://github.com/anodynos/node2web_util.git'

  [bower-node-browserify] : Handling dep = 'path'
  [bower-node-browserify] : local repo '../module_repos/node2web_path' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_path' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_path' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_path
   7fd5dee..208a5bf  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'path'
  [bower-node-browserify] : 'path' tag version '3.46.1' not exists - Generating & saving 'path.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_path/path.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_path/path.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_path/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_path/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_path/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_path' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 5f2939c] browserify version '3.46.1'
 5 files changed, 77 insertions(+), 65 deletions(-)
 rewrite path.min.js (96%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_path master --tags -f { cwd: '../module_repos/node2web_path' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_path
   208a5bf..5f2939c  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'path' = 'git://github.com/anodynos/node2web_path.git'

  [bower-node-browserify] : Handling dep = 'child_process'
  [bower-node-browserify] : local repo '../module_repos/node2web_child_process' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_child_process' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_child_process' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_child_process
   1d853e3..003c1a0  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'child_process'
  [bower-node-browserify] : 'child_process' tag version '3.46.1' not exists - Generating & saving 'child_process.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_child_process/child_process.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_child_process/child_process.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_child_process/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_child_process/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_child_process/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_child_process' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 1b1993d] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_child_process master --tags -f { cwd: '../module_repos/node2web_child_process' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_child_process
   003c1a0..1b1993d  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'child_process' = 'git://github.com/anodynos/node2web_child_process.git'

  [bower-node-browserify] : Handling dep = 'crypto'
  [bower-node-browserify] : local repo '../module_repos/node2web_crypto' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_crypto' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_crypto' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_crypto
   b592ea9..058a398  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'crypto'
  [bower-node-browserify] : 'crypto' tag version '3.46.1' not exists - Generating & saving 'crypto.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_crypto/crypto.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_crypto/crypto.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_crypto/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_crypto/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_crypto/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_crypto' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 30ade36] browserify version '3.46.1'
 5 files changed, 1504 insertions(+), 1452 deletions(-)
 rewrite crypto.min.js (98%)
 warning: CRLF will be replaced by LF in crypto.js.
The file will have its original line endings in your working directory.
warning: CRLF will be replaced by LF in crypto.js.
The file will have its original line endings in your working directory.
warning: CRLF will be replaced by LF in crypto.js.
The file will have its original line endings in your working directory.

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_crypto master --tags -f { cwd: '../module_repos/node2web_crypto' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_crypto
   058a398..30ade36  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'crypto' = 'git://github.com/anodynos/node2web_crypto.git'

  [bower-node-browserify] : Handling dep = 'string_decoder'
  [bower-node-browserify] : local repo '../module_repos/node2web_string_decoder' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_string_decoder' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_string_decoder' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_string_decoder
   f51eb82..ed880cc  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'string_decoder'
  [bower-node-browserify] : 'string_decoder' tag version '3.46.1' not exists - Generating & saving 'string_decoder.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_string_decoder/string_decoder.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_string_decoder/string_decoder.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_string_decoder/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_string_decoder/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_string_decoder/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_string_decoder' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 2705162] browserify version '3.46.1'
 5 files changed, 110 insertions(+), 58 deletions(-)
 rewrite string_decoder.min.js (96%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_string_decoder master --tags -f { cwd: '../module_repos/node2web_string_decoder' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_string_decoder
   ed880cc..2705162  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'string_decoder' = 'git://github.com/anodynos/node2web_string_decoder.git'

  [bower-node-browserify] : Handling dep = 'timers'
  [bower-node-browserify] : local repo '../module_repos/node2web_timers' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_timers' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_timers' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_timers
   ba5f72f..71da9f8  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'timers'
  [bower-node-browserify] : 'timers' tag version '3.46.1' not exists - Generating & saving 'timers.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_timers/timers.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_timers/timers.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_timers/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_timers/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_timers/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_timers' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master d13ce58] browserify version '3.46.1'
 5 files changed, 10 insertions(+), 10 deletions(-)
 rewrite timers.min.js (63%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_timers master --tags -f { cwd: '../module_repos/node2web_timers' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_timers
   71da9f8..d13ce58  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'timers' = 'git://github.com/anodynos/node2web_timers.git'

  [bower-node-browserify] : Handling dep = 'domain'
  [bower-node-browserify] : local repo '../module_repos/node2web_domain' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_domain' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_domain' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_domain
   8c9d6d5..e162d6b  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'domain'
  [bower-node-browserify] : 'domain' tag version '3.46.1' not exists - Generating & saving 'domain.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_domain/domain.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_domain/domain.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_domain/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_domain/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_domain/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_domain' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master bf7ca52] browserify version '3.46.1'
 5 files changed, 34 insertions(+), 33 deletions(-)
 rewrite domain.min.js (86%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_domain master --tags -f { cwd: '../module_repos/node2web_domain' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_domain
   e162d6b..bf7ca52  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'domain' = 'git://github.com/anodynos/node2web_domain.git'

  [bower-node-browserify] : Handling dep = 'buffer'
  [bower-node-browserify] : local repo '../module_repos/node2web_buffer' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_buffer' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_buffer' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_buffer
   c483305..c330674  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'buffer'
  [bower-node-browserify] : 'buffer' tag version '3.46.1' not exists - Generating & saving 'buffer.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_buffer/buffer.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_buffer/buffer.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_buffer/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_buffer/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_buffer/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_buffer' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 44f2813] browserify version '3.46.1'
 5 files changed, 110 insertions(+), 58 deletions(-)
 rewrite buffer.min.js (95%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_buffer master --tags -f { cwd: '../module_repos/node2web_buffer' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_buffer
   c330674..44f2813  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'buffer' = 'git://github.com/anodynos/node2web_buffer.git'

  [bower-node-browserify] : Handling dep = 'net'
  [bower-node-browserify] : local repo '../module_repos/node2web_net' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_net' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_net' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_net
   09e0186..782600e  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'net'
  [bower-node-browserify] : 'net' tag version '3.46.1' not exists - Generating & saving 'net.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_net/net.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_net/net.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_net/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_net/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_net/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_net' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 0047562] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_net master --tags -f { cwd: '../module_repos/node2web_net' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_net
   782600e..0047562  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'net' = 'git://github.com/anodynos/node2web_net.git'

  [bower-node-browserify] : Handling dep = 'dgram'
  [bower-node-browserify] : local repo '../module_repos/node2web_dgram' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_dgram' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_dgram' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_dgram
   c61689c..510763b  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'dgram'
  [bower-node-browserify] : 'dgram' tag version '3.46.1' not exists - Generating & saving 'dgram.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_dgram/dgram.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_dgram/dgram.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_dgram/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_dgram/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_dgram/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_dgram' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 1e19ccf] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_dgram master --tags -f { cwd: '../module_repos/node2web_dgram' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_dgram
   510763b..1e19ccf  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'dgram' = 'git://github.com/anodynos/node2web_dgram.git'

  [bower-node-browserify] : Handling dep = 'dns'
  [bower-node-browserify] : local repo '../module_repos/node2web_dns' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_dns' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_dns' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_dns
   52e0f2c..645485a  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'dns'
  [bower-node-browserify] : 'dns' tag version '3.46.1' not exists - Generating & saving 'dns.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_dns/dns.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_dns/dns.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_dns/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_dns/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_dns/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_dns' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 8d6028c] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_dns master --tags -f { cwd: '../module_repos/node2web_dns' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_dns
   645485a..8d6028c  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'dns' = 'git://github.com/anodynos/node2web_dns.git'

  [bower-node-browserify] : Handling dep = 'stream'
  [bower-node-browserify] : local repo '../module_repos/node2web_stream' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_stream' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_stream' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_stream
   42a4cb0..fda3187  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'stream'
  [bower-node-browserify] : 'stream' tag version '3.46.1' not exists - Generating & saving 'stream.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_stream/stream.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_stream/stream.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_stream/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_stream/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_stream/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_stream' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 197580d] browserify version '3.46.1'
 5 files changed, 1436 insertions(+), 1318 deletions(-)
 rewrite stream.min.js (97%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_stream master --tags -f { cwd: '../module_repos/node2web_stream' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_stream
   fda3187..197580d  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'stream' = 'git://github.com/anodynos/node2web_stream.git'

  [bower-node-browserify] : Handling dep = 'https'
  [bower-node-browserify] : local repo '../module_repos/node2web_https' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_https' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_https' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_https
   20794f5..73c6c6c  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'https'
  [bower-node-browserify] : 'https' tag version '3.46.1' not exists - Generating & saving 'https.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_https/https.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_https/https.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_https/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_https/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_https/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_https' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 149bf56] browserify version '3.46.1'
 5 files changed, 2286 insertions(+), 2010 deletions(-)
 rewrite https.min.js (98%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_https master --tags -f { cwd: '../module_repos/node2web_https' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_https
   73c6c6c..149bf56  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'https' = 'git://github.com/anodynos/node2web_https.git'

  [bower-node-browserify] : Handling dep = 'querystring'
  [bower-node-browserify] : local repo '../module_repos/node2web_querystring' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_querystring' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_querystring' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_querystring
   cf41923..ea6f155  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'querystring'
  [bower-node-browserify] : 'querystring' tag version '3.46.1' not exists - Generating & saving 'querystring.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_querystring/querystring.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_querystring/querystring.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_querystring/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_querystring/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_querystring/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_querystring' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 66c0cdb] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_querystring master --tags -f { cwd: '../module_repos/node2web_querystring' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_querystring
   ea6f155..66c0cdb  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'querystring' = 'git://github.com/anodynos/node2web_querystring.git'

  [bower-node-browserify] : Handling dep = 'punycode'
  [bower-node-browserify] : local repo '../module_repos/node2web_punycode' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_punycode' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_punycode' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_punycode
   9e65449..fb8898d  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'punycode'
  [bower-node-browserify] : 'punycode' tag version '3.46.1' not exists - Generating & saving 'punycode.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_punycode/punycode.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_punycode/punycode.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_punycode/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_punycode/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_punycode/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_punycode' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 5ddcb56] browserify version '3.46.1'
 5 files changed, 12 insertions(+), 11 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_punycode master --tags -f { cwd: '../module_repos/node2web_punycode' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_punycode
   fb8898d..5ddcb56  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] WARNING: bower registration is taken: 'punycode' = 'git://github.com/bestiejs/punycode.js.git'

  [bower-node-browserify] : Handling dep = 'readline'
  [bower-node-browserify] : local repo '../module_repos/node2web_readline' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_readline' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_readline' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_readline
   73c8fcb..9d8bd4c  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'readline'
  [bower-node-browserify] : 'readline' tag version '3.46.1' not exists - Generating & saving 'readline.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_readline/readline.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_readline/readline.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_readline/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_readline/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_readline/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_readline' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 380780e] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_readline master --tags -f { cwd: '../module_repos/node2web_readline' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_readline
   9d8bd4c..380780e  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'readline' = 'git://github.com/anodynos/node2web_readline.git'

  [bower-node-browserify] : Handling dep = 'url'
  [bower-node-browserify] : local repo '../module_repos/node2web_url' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_url' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_url' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_url
   0979433..92fcb08  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'url'
  [bower-node-browserify] : 'url' tag version '3.46.1' not exists - Generating & saving 'url.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_url/url.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_url/url.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_url/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_url/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_url/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_url' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 6bdf862] browserify version '3.46.1'
 5 files changed, 303 insertions(+), 226 deletions(-)
 rewrite url.min.js (98%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_url master --tags -f { cwd: '../module_repos/node2web_url' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_url
   92fcb08..6bdf862  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] WARNING: bower registration is taken: 'url' = 'git://github.com/georgealways/url.js.git'

  [bower-node-browserify] : Handling dep = 'repl'
  [bower-node-browserify] : local repo '../module_repos/node2web_repl' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_repl' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_repl' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_repl
   df1193f..c69c4b7  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'repl'
  [bower-node-browserify] : 'repl' tag version '3.46.1' not exists - Generating & saving 'repl.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_repl/repl.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_repl/repl.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_repl/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_repl/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_repl/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_repl' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 7ebc17d] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_repl master --tags -f { cwd: '../module_repos/node2web_repl' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_repl
   c69c4b7..7ebc17d  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'repl' = 'git://github.com/anodynos/node2web_repl.git'

  [bower-node-browserify] : Handling dep = 'vm'
  [bower-node-browserify] : local repo '../module_repos/node2web_vm' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_vm' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_vm' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_vm
   837b5e4..a080781  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'vm'
  [bower-node-browserify] : 'vm' tag version '3.46.1' not exists - Generating & saving 'vm.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_vm/vm.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_vm/vm.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_vm/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_vm/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_vm/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_vm' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master de17ac7] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_vm master --tags -f { cwd: '../module_repos/node2web_vm' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_vm
   a080781..de17ac7  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'vm' = 'git://github.com/anodynos/node2web_vm.git'

  [bower-node-browserify] : Handling dep = 'assert'
  [bower-node-browserify] : local repo '../module_repos/node2web_assert' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_assert' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_assert' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_assert
   0231bfa..ad7495e  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'assert'
  [bower-node-browserify] : 'assert' tag version '3.46.1' not exists - Generating & saving 'assert.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_assert/assert.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_assert/assert.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_assert/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_assert/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_assert/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_assert' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 8fca716] browserify version '3.46.1'
 5 files changed, 21 insertions(+), 9 deletions(-)
 rewrite assert.min.js (78%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_assert master --tags -f { cwd: '../module_repos/node2web_assert' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_assert
   ad7495e..8fca716  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] WARNING: bower registration is taken: 'assert' = 'git://github.com/jgallen23/assert'

  [bower-node-browserify] : Handling dep = 'tty'
  [bower-node-browserify] : local repo '../module_repos/node2web_tty' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_tty' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_tty' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_tty
   9dbe09d..b08558b  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'tty'
  [bower-node-browserify] : 'tty' tag version '3.46.1' not exists - Generating & saving 'tty.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_tty/tty.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_tty/tty.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_tty/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_tty/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_tty/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_tty' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 6521c64] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_tty master --tags -f { cwd: '../module_repos/node2web_tty' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_tty
   b08558b..6521c64  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'tty' = 'git://github.com/anodynos/node2web_tty.git'

  [bower-node-browserify] : Handling dep = 'zlib'
  [bower-node-browserify] : local repo '../module_repos/node2web_zlib' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_zlib' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_zlib' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_zlib
   6dba224..8be1939  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'zlib'
  [bower-node-browserify] : 'zlib' tag version '3.46.1' not exists - Generating & saving 'zlib.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_zlib/zlib.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_zlib/zlib.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_zlib/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_zlib/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_zlib/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_zlib' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master e6b7356] browserify version '3.46.1'
 5 files changed, 10669 insertions(+), 1146 deletions(-)
 rewrite zlib.min.js (98%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_zlib master --tags -f { cwd: '../module_repos/node2web_zlib' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_zlib
   8be1939..e6b7356  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'zlib' = 'git://github.com/anodynos/node2web_zlib.git'

  [bower-node-browserify] : Handling dep = 'os'
  [bower-node-browserify] : local repo '../module_repos/node2web_os' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_os' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_os' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_os
   8c3797b..3360ad8  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'os'
  [bower-node-browserify] : 'os' tag version '3.46.1' not exists - Generating & saving 'os.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_os/os.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_os/os.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_os/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_os/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_os/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_os' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 0a63ea9] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_os master --tags -f { cwd: '../module_repos/node2web_os' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_os
   3360ad8..0a63ea9  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'os' = 'git://github.com/anodynos/node2web_os.git'

  [bower-node-browserify] : Handling dep = 'cluster'
  [bower-node-browserify] : local repo '../module_repos/node2web_cluster' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_cluster' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_cluster' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_cluster
   e3a7ef7..79b0ee0  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'cluster'
  [bower-node-browserify] : 'cluster' tag version '3.46.1' not exists - Generating & saving 'cluster.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_cluster/cluster.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_cluster/cluster.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_cluster/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_cluster/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_cluster/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_cluster' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 14ac41c] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_cluster master --tags -f { cwd: '../module_repos/node2web_cluster' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_cluster
   79b0ee0..14ac41c  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'cluster' = 'git://github.com/anodynos/node2web_cluster.git'

  [bower-node-browserify] : Handling dep = 'module'
  [bower-node-browserify] : local repo '../module_repos/node2web_module' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_module' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_module' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_module
   920c5f7..f48b13c  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'module'
  [bower-node-browserify] : 'module' tag version '3.46.1' not exists - Generating & saving 'module.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_module/module.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_module/module.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_module/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_module/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_module/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_module' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 98ff739] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_module master --tags -f { cwd: '../module_repos/node2web_module' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_module
   f48b13c..98ff739  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] WARNING: bower registration is taken: 'module' = 'git://github.com/fnando/module.git'

  [bower-node-browserify] : Handling dep = 'console'
  [bower-node-browserify] : local repo '../module_repos/node2web_console' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_console' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_console' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_console
   461b140..a6af164  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'console'
  [bower-node-browserify] : 'console' tag version '3.46.1' not exists - Generating & saving 'console.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_console/console.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_console/console.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_console/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_console/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_console/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_console' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master e29d72a] browserify version '3.46.1'
 5 files changed, 24 insertions(+), 10 deletions(-)
 rewrite console.min.js (61%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_console master --tags -f { cwd: '../module_repos/node2web_console' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_console
   a6af164..e29d72a  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'console' = 'git://github.com/anodynos/node2web_console.git'

  [bower-node-browserify] : Handling dep = 'sys'
  [bower-node-browserify] : local repo '../module_repos/node2web_sys' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_sys' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_sys' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_sys
   4b68c1f..34a5c0d  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'sys'
  [bower-node-browserify] : 'sys' tag version '3.46.1' not exists - Generating & saving 'sys.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_sys/sys.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_sys/sys.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_sys/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_sys/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_sys/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_sys' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master 7b57413] browserify version '3.46.1'
 5 files changed, 21 insertions(+), 9 deletions(-)
 rewrite sys.min.js (87%)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_sys master --tags -f { cwd: '../module_repos/node2web_sys' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_sys
   34a5c0d..7b57413  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'sys' = 'git://github.com/anodynos/node2web_sys.git'

  [bower-node-browserify] : Handling dep = 'constants'
  [bower-node-browserify] : local repo '../module_repos/node2web_constants' exists
  [bower-node-browserify] : Remote repo 'https://github.com/anodynos/node2web_constants' exists
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git fetch -t { cwd: '../module_repos/node2web_constants' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  From https://github.com/anodynos/node2web_constants
   db2fc16..ba1ce2b  master     -> origin/master

  [bower-node-browserify] : local & remote repos should both be in sync for 'constants'
  [bower-node-browserify] : 'constants' tag version '3.46.1' not exists - Generating & saving 'constants.js'.
  [bower-node-browserify] : Saving file '../module_repos/node2web_constants/constants.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_constants/constants.min.js'
  [bower-node-browserify] : Saving file '../module_repos/node2web_constants/readme.md'
  [bower-node-browserify] : Saving file '../module_repos/node2web_constants/bower.json'
  [bower-node-browserify] : Saving file '../module_repos/node2web_constants/package.json'
  [bower-node-browserify] DEBUG: (!1) exec called with:
 git add .
git commit -m "browserify version '3.46.1'"
git tag 3.46.1 -f { cwd: '../module_repos/node2web_constants' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
 [master f59dbba] browserify version '3.46.1'
 5 files changed, 5 insertions(+), 5 deletions(-)

  [bower-node-browserify] DEBUG: (!1) exec called with:
 git push https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_constants master --tags -f { cwd: '../module_repos/node2web_constants' }
  [bower-node-browserify] DEBUG: (!1) exec stdout is:
  To https://anodynos:pa!nlesszam41kgiou@github.com/anodynos/node2web_constants
   ba1ce2b..f59dbba  master -> master
 * [new tag]         3.46.1 -> 3.46.1

  [bower-node-browserify] : Already bower registered: 'constants' = 'git://github.com/anodynos/node2web_constants.git'

Process finished with exit code 0
```