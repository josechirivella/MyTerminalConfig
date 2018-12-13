#! /bin/sh

screenshots_folder=$HOME/screenshots

echo 'Screenshots default type set to JPG'
defaults write com.apple.screencapture type jpg

echo "I'm going to store screenshots in " $screenshots_folder
mkdir $screenshots_folder
defaults write com.apple.screencapture location screenshots_folder

echo 'Restarting SystemUIServer'
killall SystemUIServer
