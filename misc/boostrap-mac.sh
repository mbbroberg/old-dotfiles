#!/bin/sh

git clone --recursive https://github.com/bradp/dotfiles.git ~/dotfiles

if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
brew install git git-extras legit git-flow tig tree wget trash svn imagemagick cowsay fortune
brew cleanup
sh ~/dotfiles/.oh-my-zsh/tools/install.sh
sudo chsh -s $(which zsh)

cd ~/dotfiles && rake
