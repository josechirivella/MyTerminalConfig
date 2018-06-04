#! /bin/sh

config="MyTerminalConfig"

echo "Creating system link for vim"
ln -sf $config/.vim ~/.vim
ln -sf $config/.vimrc ~/.vimrc

echo "Creating system link for tmux"
ln -sf $config/.tmux.conf ~/.tmux.conf

echo "Success!"
