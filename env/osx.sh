export FIREFOX_BIN="/Applications/Firefox Developer Edition.app/Contents/MacOS/firefox-bin"
export PATH="$PATH:/usr/local/opt/mongodb-community@3.6/bin:/usr/local/sbin"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
alias fixappstore="rm -r '$TMPDIR/../C/com.apple.appstore/'* && killall -9 appstoreagent"