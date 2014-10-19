# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="brad-muse"

# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"
alias lss="ls -Gal"
alias lp="ls -p"
alias h="history"
alias "cd.."="cd .."
alias box="cd ~/Dropbox/"
alias github="cd ~/Dropbox/Projects/GitHub/"
alias working="cd ~/Dropbox/Working/"
alias wds="cd ~/Dropbox/WDS/"
alias personal="cd ~/Dropbox/Working/Personal"
alias unhidelibrary="chflags nohidden /Users/bradparbs/Library"
alias hosts="subl /etc/hosts"
alias c="cd"
alias g="git"
alias gs="git status"
alias gcm="git commit -m"
alias e="subl ."
alias ql="qlmanage -p"
alias yolo="git commit -am '`curl -s http://whatthecommit.com/index.txt`'"
alias yoloo="git commit -am '`curl -s http://whatthecommit.com/index.txt`' && git push origin master --force"
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | printf '=> Public key copied to pasteboard.\n'";
alias gifs='ssh gifs@96.30.0.170'
alias sites="cd ~/Dropbox/Sites/www"
alias v=vagrant
alias vv=vvv
alias vup="vagrant up && vagrant provision && vagrant ssh"
alias caff="caffeinate -dis"
alias vp="vagrant provision"
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias wpc="cd htdocs/wp-content"
alias vs='sites && vagrant ssh'


resest-mod-dir(){
	git checkout -- ` git ls-files -m -- "$*"`
}
DEFAULT_USER="bradparbs@bradparbs"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git lol git-extras brew osx vagrant github zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export MAMP_PHP=/Applications/MAMP/bin/php/php5.3.6/bin

# Customize to your needs...
export PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/git/bin:/opt/sm/bin:/opt/sm/pkg/active/bin:/opt/sm/pkg/active/sbin:/opt/local/bin:/Users/bradparbs/Dropbox/Sites:$PATH
