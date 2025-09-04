# macOS-specific PATH additions
add_to_path "/opt/homebrew/bin"
add_to_path "/opt/homebrew/sbin"
add_to_path "/usr/local/sbin"
add_to_path "/opt/homebrew/opt/postgresql@17/bin"
add_to_path "/opt/homebrew/opt/openjdk/bin"
export GOPATH="$HOME/repos/go"
alias fixappstore="rm -r '$TMPDIR/../C/com.apple.appstore/'* && killall -9 appstoreagent"

# direnv - only configure if installed
if command -v direnv &>/dev/null; then
  eval "$(direnv hook zsh)"
fi

restartBrewServices() {
  for service in $(brew services list --json | jq '.[].name' | tr -d '"'); do
    brew services restart $service
  done
}

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# LM Studio
add_to_path "$HOME/.lmstudio/bin"

eval "$(mise activate zsh)"
