#!/bin/zsh

# PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/.local/bin:$HOME/MyTerminalConfig/bin:/usr/local/opt:$PATH"

# Node Version Manager
if [ -d "$HOME/n" ]; then
  export N_PREFIX="$HOME/n"
  [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin" # Added by n-install (see http://git.io/n-install-repo).
elif [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"                   # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion" #bash_completion
elif [ -d "$HOME/.asdf" ]; then
  # append completions to fpath
  fpath=(${ASDF_DATA_DIR:-$HOME/.asdf}/completions $fpath)
  # initialise completions with ZSH's compinit
  autoload -Uz compinit && compinit
else
  echo 'No Node Version Manager has been installed'
fi

# Java
install_java() {
  if [ command java ] &>/dev/null; then
    export JAVA_HOME="$(/usr/libexec/java_home -v 10)"
  fi
}

# Virtual Environment
export PROJECT_HOME=$HOME/MyTerminalConfig/

# Editor
export EDITOR='vim'

# Owner
export USER_NAME=$USER

# Ruby
rbenv_install() {
  if [ -d "$HOME/.rbenv" ]; then
    export PATH="$HOME/.rbenv/bin:$PATH"
    export PATH="$HOME/.rbenv/shims:$PATH"
    export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
    eval "$(rbenv init -)"
  else
    echo 'rbenv not detected'
  fi
}

function clonepersonal() {
  git clone git@github.com:josechirivella/$1
}

function clonefrustrated() {
  git clone git@github.com:frustrateddeveloper/$1
}

function convertImagesToWebp() {
  echo 'Converting all .png, .jpg, and .jpeg files to .webp...'
  for f in $(find . -name '*.png' -or -name '*.jpg' -or -name '*.jpeg'); do
    if [ ! -f "${f%.*}.webp" ]; then
      cwebp -q 60 $f -o ${f%.*}.webp
    fi
  done
}

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Google Cloud SDK
# The next line updates PATH for the Google Cloud SDK.
if [ -f $HOME'/google-cloud-sdk/path.zsh.inc' ]; then . $HOME'/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f $HOME'/google-cloud-sdk/completion.zsh.inc' ]; then . $HOME'/google-cloud-sdk/completion.zsh.inc'; fi
alias changegcloud="gcloud config configurations activate"

rbenv_install
install_java
