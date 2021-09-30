export FIREFOX_BIN="/Applications/Firefox Developer Edition.app/Contents/MacOS/firefox-bin"
export PATH="$PATH:/usr/local/sbin:/opt/homebrew/bin"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
GPG_TTY=$(tty)
export GPG_TTY
alias fixappstore="rm -r '$TMPDIR/../C/com.apple.appstore/'* && killall -9 appstoreagent"
