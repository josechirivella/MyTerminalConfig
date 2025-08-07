# macOS-specific PATH additions
add_to_path "/opt/homebrew/bin"
add_to_path "/opt/homebrew/sbin"
add_to_path "/usr/local/sbin"
add_to_path "/opt/homebrew/opt/postgresql@17/bin"
add_to_path "/opt/homebrew/opt/openjdk/bin"
add_to_path "${ASDF_DATA_DIR:-$HOME/.asdf}/shims"
export GOPATH="$HOME/repos/go"
alias fixappstore="rm -r '$TMPDIR/../C/com.apple.appstore/'* && killall -9 appstoreagent"

# direnv - only configure if installed
if command -v direnv &>/dev/null; then
    eval "$(direnv hook zsh)"
fi

[ -s "/opt/homebrew/opt/asdf/libexec/asdf.sh" ] && . /opt/homebrew/opt/asdf/libexec/asdf.sh

restartBrewServices() {
    for service in $(brew services list --json | jq '.[].name' | tr -d '"'); do
        brew services restart $service
    done
}


# pnpm
export PNPM_HOME="/Users/$USER/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# LM Studio
add_to_path "/Users/$USER/.lmstudio/bin"
