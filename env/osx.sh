export PATH="$PATH:/opt/homebrew/sbin:/opt/homebrew/bin:/usr/local/sbin:/opt/homebrew/bin:/opt/homebrew/opt/postgresql@17/bin:/opt/homebrew/opt/openjdk/bin:${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
export GOPATH="$HOME/repos/go"
alias fixappstore="rm -r '$TMPDIR/../C/com.apple.appstore/'* && killall -9 appstoreagent"

eval "$(direnv hook zsh)"

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
