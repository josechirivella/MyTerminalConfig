# MySQL
export PATH="/opt/homebrew/opt/mysql@5.7/bin:$PATH"

export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# PM
export PATH="$HOME/.composer/vendor/bin:$PATH"

# For compilers to find openssl@3 you may need to set:
export LDFLAGS="-L/opt/homebrew/opt/openssl@3/lib"
export CPPFLAGS="-I/opt/homebrew/opt/openssl@3/include"

# For pkg-config to find openssl@3 you may need to set:
export PKG_CONFIG_PATH="/opt/homebrew/opt/openssl@3/lib/pkgconfig"
export CRYPTO_DIR="/opt/homebrew/opt/openssl@3"
export OPENSSL_DIR="/opt/homebrew/opt/openssl"

# Puppeteer
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=$CHROME_BIN

export PNPM_HOME="/Users/jchirivella/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

alias wipedb="php artisan db:wipe --force && php artisan migrate:fresh --seed --force"

restartBrewServices() {
  services=("mysql@5.7" "php" "nginx" "redis")
  for service in "${services[@]}"; do
    brew services restart $service
  done
}

clone() {
  git clone git@github.com:processmaker/$1
}
