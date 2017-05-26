#	                ██
#	               ░██
#	 ██████  ██████░██      ██████  █████
#	░░░░██  ██░░░░ ░██████ ░░██░░█ ██░░░██
#	   ██  ░░█████ ░██░░░██ ░██ ░ ░██  ░░
#	  ██    ░░░░░██░██  ░██ ░██   ░██   ██
#	 ██████ ██████ ░██  ░██░███   ░░█████
#	░░░░░░ ░░░░░░  ░░   ░░ ░░░     ░░░░░

ZSH=$HOME/Documents/Develop/dotfiles/.oh-my-zsh # Path to your oh-my-zsh configuration.
ZSH_THEME="agnoster" # Set name of the theme to load from ./zsh-custom/themes/

DEFAULT_USER="mbbroberg"
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE=true
ZSH_CUSTOM=$HOME/Documents/Develop/dotfiles/zsh-custom
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_PATTERNS=('rm -rf *' 'fg=white,bold,bg=red')

unsetopt nomatch
setopt APPEND_HISTORY
setopt INTERACTIVE_COMMENTS
setopt HIST_FIND_NO_DUPS 		# no duplicates in history

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
	zsh-autosuggestions
)

zstyle :omz:plugins:ssh-agent agent-forwarding on

source $HOME/Documents/Develop/dotfiles/.oh-my-zsh/oh-my-zsh.sh
for file in $HOME/Documents/Develop/dotfiles/zsh-custom/sourced/*; do
   source "$file"
done

# When working with training by @bketelsen
# Uses direnv to have relative GOPATHs: https://direnv.net/
eval "$(direnv hook zsh)"

export PATH=${PATH}
