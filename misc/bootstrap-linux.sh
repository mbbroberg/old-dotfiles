#!/bin/sh

git clone --recursive https://github.com/bradp/dotfiles.git ~/dotfiles

sudo apt-get -y install zsh tree tig wget cowsay fortune rake
sh ~/dotfiles/.oh-my-zsh/tools/install.sh
sudo chsh -s $(which zsh)

cd ~/dotfiles && rake
