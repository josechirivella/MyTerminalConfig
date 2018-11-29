export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
fi

plugins=(git git-completion colored-man colorize github brew osx zsh-syntax-highlighting ruby rbenv rails git-flow git-flow-completion tmux docker docker-compose go golang iterm2 ssh-agent zsh_reload)
. ~/MyTerminalConfig/Projects/config/env.sh
. ~/MyTerminalConfig/Projects/config/foodlogiq.sh
DEFAULT_USER=$USER
neofetch
