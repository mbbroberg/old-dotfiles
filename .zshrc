#	                ██
#	               ░██
#	 ██████  ██████░██      ██████  █████
#	░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#	   ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#	  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#	 ██████ ██████ ░██  ░██░███   ░░█████
#	░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░

ZSH=$HOME/Documents/Develop/dotfiles/.oh-my-zsh # Path to your oh-my-zsh configuration.
ZSH_THEME="agnoster" # Set name of the theme to load.

DEFAULT_USER="mjbrende"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE=true
ZSH_CUSTOM=$HOME/Documents/Develop/dotfiles/zsh-custom
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

unsetopt nomatch
setopt APPEND_HISTORY
setopt INTERACTIVE_COMMENTS

plugins=(
	brew
	brew-cask
	catimg
	git
	git-extras
	github
	lol
	nyan
	osx
  go
  ruby
  scala
	parbs-sites
	sublime
	vagrant
	z
	zsh-syntax-highlighting
)

source $HOME/Documents/Develop/dotfiles/.oh-my-zsh/oh-my-zsh.sh
for file in $HOME/Documents/Develop/dotfiles/zsh-custom/sourced/*; do
   source "$file"
done

PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
#PATH=${PATH}:/usr/local/git/bin
#PATH=${PATH}:/opt/sm/bin
#PATH=${PATH}:/opt/sm/pkg/active/bin
#PATH=${PATH}:/opt/sm/pkg/active/sbin
#PATH=${PATH}:/usr/local/heroku/bin
PATH=${PATH}:"$HOME"/Documents/Develop/dotfiles/misc
PATH=${PATH}:"$HOME"/Documents/Develop/dotfiles/bin
#PATH=${PATH}:"$HOME"/.composer/vendor/bin
PATH=${PATH}:"$HOME"/go/bin

export PATH=${PATH}
