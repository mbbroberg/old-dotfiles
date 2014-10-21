ZSH=$HOME/.oh-my-zsh # Path to your oh-my-zsh configuration.
ZSH_THEME="brad-muse" # Set name of the theme to load.

DEFAULT_USER="bradparbs@bradparbs"
COMPLETION_WAITING_DOTS="true"

plugins=(git lol git-extras brew osx vagrant github zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.functions
source ~/.exports

PATH=${PATH}:/usr/bin
PATH=${PATH}:/bin
PATH=${PATH}:/usr/sbin
PATH=${PATH}:/sbin
PATH=${PATH}:/usr/local/bin
PATH=${PATH}:/usr/local/git/bin
PATH=${PATH}:/opt/sm/bin
PATH=${PATH}:/opt/sm/pkg/active/bin
PATH=${PATH}:/opt/sm/pkg/active/sbin
PATH=${PATH}:/usr/local/heroku/bin
PATH=${PATH}:/Users/bradparbs/Dropbox/Sites
export PATH=${PATH}

