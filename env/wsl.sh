export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin:$HOME/.rbenv/bin"

function startServices() {
  services=("mysql" "redis-server" "nginx")
  for service in "${services[@]}"; do
    sudo service $service start
  done
}
