export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

plugins=(git colorize github brew osx ruby rbenv rails git-flow tmux docker docker-compose go golang iterm2 ssh-agent zsh_reload encode64 git npm rsync systemd ufw)
. ~/MyTerminalConfig/env/env.sh
. ~/MyTerminalConfig/env/foodlogiq.sh
if [[ $DESKTOP_SESSION == "ubuntu" ]]; then
	. ~/MyTerminalConfig/env/ubuntu.sh
fi
. ~/MyTerminalConfig/env/alias.sh
if [[ `uname` == "Darwin" ]]; then
  . ~/MyTerminalConfig/env/osx.sh
fi
DEFAULT_USER=$USER
neofetch
