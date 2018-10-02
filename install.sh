#! /bin/sh

config="MyTerminalConfig"

vim_install()
{
  if [ ! -f $HOME/.vimrc ]; then
    echo 'Vim not found. Proceeding with installation'
    ln -sf $config/.vim $HOME/.vim
    ln -sf $config/.vimrc $HOME/.vimrc
    echo 'Success installing Vim'
  else
    echo 'Vim files exist. Skipping'
  fi
}

tmux_install()
{
  if [ ! -f $HOME/.tmux.conf ]; then
    echo 'Tmux config file not found. Proceeding with installation'
    ln -sf $config/.tmux.conf $HOME/.tmux.conf
    echo 'Success installing Tmux'
  else
    echo 'Tmux file exist. Skipping'
  fi
}

zsh_install()
{
  if [ ! -f $HOME/.zshrc ]; then
    echo '.zshrc file not found'
    ln -sf $config/.zshrc $HOME/.zshrc
  else
    echo '.zshrc file detected. Proceeding...'
    mv $HOME/.zshrc $HOME/.zshrc.original.backup
    ln -sf $config/.zshrc $HOME/.zshrc
  fi
}

vscode_install() 
{
  code -v > /dev/null
  if [[$? -eq 0 ]]; then
    read -r -p "Do you want to overwrite user config? [y|N] " configresponse
    if [[ $configresponse =~ ^(y|yes|Y) ]];then
        read -r -p "Do you want to back up your current user config? [Y|n] " backupresponse
        if [[ $backupresponse =~ ^(n|no|N) ]];then
            ok "Skipping user config save."
        else
            cp $HOME/Library/Application\ Support/Code/User/settings.json $HOME/Library/Application\ Support/Code/User/settings.backup.json
            ok "Your previous config has been saved to: $HOME/Library/Application Support/Code/User/settings.backup.json"
        fi
        cp ./settings.json $HOME/Library/Application\ Support/Code/User/settings.json

        ok "New user config has been written. Please restart your VSC."
    else
        ok "Skipping user config overwriting.";
    fi
else
    error "It looks like the command 'code' isn't accessible."
    error "Please make sure you have Visual Studio Code installed"
    error "And that you executed this procedure: https://code.visualstudio.com/docs/setup/mac"
fi
}

vim_install
tmux_install
zsh_install
vscode_install
