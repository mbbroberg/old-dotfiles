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
	git
	git-extras
	github
	tmux
	osx
  	go
  	ruby
	docker
	vagrant
	z
	zsh-syntax-highlighting
)

zstyle :omz:plugins:ssh-agent agent-forwarding on

source $HOME/Documents/Develop/dotfiles/.oh-my-zsh/oh-my-zsh.sh
for file in $HOME/Documents/Develop/dotfiles/zsh-custom/sourced/*; do
   source "$file"
done

PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:$HOME/.rvm/bin  # Add RVM to PATH for scripting
PATH=${PATH}:/usr/local/sbin # for homebrew (brew)
PATH=${PATH}:$HOME/Documents/Develop/dotfiles/bin # dotfile binaries

export PATH=${PATH}
