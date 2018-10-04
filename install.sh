#! /bin/sh

config="MyTerminalConfig"
unameOut="$(uname -a)"

case "${os}" in
	Linux*)  os=Linux;;
	fedora*) os=Fedora;;
	Darwin*) os=Mac;;
esac
echo ${os}
fedora()
{
	if [os | grep 'fedora']; then
		echo 'Fedora detected. Proceeding'
		./fedora.sh
	fi
}

macOS()
{


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

vim_install
tmux_install
zsh_install
