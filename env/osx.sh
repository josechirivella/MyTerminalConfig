export FIREFOX_BIN="/Applications/Firefox Developer Edition.app/Contents/MacOS/firefox-bin"
export PATH="$PATH:/usr/local/opt/mongodb-community@3.6/bin:/usr/local/sbin"
export LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_261.jdk/Contents/Home"
GPG_TTY=$(tty)
export GPG_TTY
# export CORDOVA_ANDROID_GRADLE_DISTRIBUTION_URL="https://services.gradle.org/distributions/gradle-6.6.1-all.zip"
# export ANDROID_HOME="$USER/Library/Android/sdk"
# export ANDROID_SDK_ROOT="$USER/Library/Android/sdk"
