#!/bin/sh

git clone --recursive https://github.com/bradp/dotfiles.git ~/dotfiles

apt-get -y install zsh tree tig wget cowsay fortune rake
sh ~/dotfiles/.oh-my-zsh/tools/install.sh
chsh -s $(which zsh)

cd ~/dotfiles && rake
