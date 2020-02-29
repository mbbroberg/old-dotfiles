# Python

## pyenv needed
eval "$(pyenv init -)"

# Ruby 

# rbenv needed
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# General coding 

if [ ! -f code ]; then
    export EDITOR="vim";
fi
export EDITOR="code";

# Direnv is lovely 
eval "$(direnv hook bash)"

###### My Everyday Paths #######
DEV="/Users/mbbroberg/Develop/"
################################

## Go setup
export GOPATH=$HOME/go
export GODEV="$GOPATH/src/github.com/"

## Nicer shell experience 
export GREP_OPTIONS="--color=auto";
export HISTSIZE=32768; # Larger bash history (allow 32³ entries; default is 500)
export HISTFILESIZE=$HISTSIZE;
export HISTCONTROL=ignoredups;
export HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help"; # Make some commands not show up in history
export LANG="en_US.UTF-8";
export LC_ALL="en_US.UTF-8";
export MANPAGER="less -X";
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export GPG_TTY=$(tty); # for gpg key management
# 10 second wait if you do something that will delete everything.  I wish I'd had this before...


## the rest of the path
PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/usr/local/sbin                      # for homebrew (brew)
PATH=${PATH}:$HOME/Develop/dotfiles/bin           # dotfile binaries
PATH=${PATH}:$GOPATH/bin                          # Go development path layout
