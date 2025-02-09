export PATH="$PATH:/usr/local/go/bin:$GOPATH/bin:$HOME/.rbenv/bin"

function startServices() {
  services=("mysql" "redis-server" "nginx")
  for service in "${services[@]}"; do
    sudo service $service start
  done
}

# pnpm
export PNPM_HOME="/home/jchirivella/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Rbenv
# TODO Looks like we are importing this multiple times. Re-check this
eval "$(~/.rbenv/bin/rbenv init - zsh)"


# TODO I'm not using bit anymore, find a way to uninstall
# bit
case ":$PATH:" in
  *":/home/jchirivella/bin:"*) ;;
  *) export PATH="$PATH:/home/jchirivella/bin" ;;
esac
# bit end