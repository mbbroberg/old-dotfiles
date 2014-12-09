#!/bin/sh
if [[ "$OSTYPE" =~ ^darwin ]]; then
	if test ! $(which brew); then
	  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	fi
	brew install git git-extras legit git-flow tig tree wget trash svn imagemagick cowsay fortune
	brew cleanup
	sh ~/dotfiles/.oh-my-zsh/tools/install.sh
	chsh -s $(which zsh)
fi

if [[ "$OSTYPE" =~ ^linux ]]; then
	sudo apt-get -y install zsh tree tig wget cowsay fortune rake
	chsh -s $(which zsh)
fi

git clone --recursive https://github.com/bradp/dotfiles.git ~/dotfiles

cd ~/dotfiles && rake
