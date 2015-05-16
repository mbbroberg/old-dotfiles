#	                ██
#	               ░██
#	 ██████  ██████░██      ██████  █████
#	░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#	   ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#	  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#	 ██████ ██████ ░██  ░██░███   ░░█████
#	░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░

ZSH=$HOME/dotfiles/.oh-my-zsh # Path to your oh-my-zsh configuration.
ZSH_THEME="brad-muse" # Set name of the theme to load.

DEFAULT_USER="bradparbs@bradparbs"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE=true
ZSH_CUSTOM=$HOME/dotfiles/zsh-custom
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
	parbs-sites
	sublime
	vagrant
	z
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh
source ~/dotfiles/.aliases
source ~/dotfiles/.functions
source ~/dotfiles/.exports
test -f ~/dotfiles/.secret && source ~/dotfiles/.secret


PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/usr/local/git/bin
PATH=${PATH}:/opt/sm/bin
PATH=${PATH}:/opt/sm/pkg/active/bin
PATH=${PATH}:/opt/sm/pkg/active/sbin
PATH=${PATH}:/usr/local/heroku/bin
PATH=${PATH}:~/dotfiles/misc
PATH=${PATH}:~/dotfiles/bin
PATH=${PATH}:~/.composer/vendor/bin
PATH=${PATH}:~/go/bin

export PATH=${PATH}

