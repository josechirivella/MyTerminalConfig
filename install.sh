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


vim_install
tmux_install
