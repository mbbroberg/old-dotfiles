#!/bin/bash
#

git clone --recursive https://github.com/bradp/dotfiles.git ~/dotfiles

if test ! $(which rake); then
	if [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
		sudo apt-get -y rake
	elif [ "$(uname)" == "Darwin" ]; then
		if test ! $(which brew); then
			ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		fi
		brew install rake
	fi
fi

cd ~/dotfiles && rake
