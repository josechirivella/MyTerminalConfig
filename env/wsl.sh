export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin:$HOME/.yarn/bin:$HOME/.rbenv/bin"
export CHROME_BIN=/mnt/c/Program\ Files/BraveSoftware/Brave-Browser/Application/brave.exe

function startServices() {
  services=("mysql" "redis-server" "nginx")
  for service in "${services[@]}"; do
    sudo service $service start
  done
  # Added php-fpm since for reason, it doens't start on boot
  php-fpm
}
