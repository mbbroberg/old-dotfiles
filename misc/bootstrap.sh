#!/bin/bash

git clone --recursive https://github.com/bradp/dotfiles.git ~/dotfiles

if [ "$(uname)" == "Darwin" ]; then
	if test ! $(which brew); then
	  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi
	brew install git git-extras legit git-flow tig tree wget trash svn imagemagick cowsay fortune
	brew cleanup
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	apt-get update
	apt-get -y install zsh tree tig wget cowsay fortune rake
fi

sh ~/dotfiles/.oh-my-zsh/tools/install.sh
chsh -s $(which zsh)
cd ~/dotfiles && rake
