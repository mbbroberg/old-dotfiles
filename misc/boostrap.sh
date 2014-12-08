git clone --recursive https://github.com/bradp/dotfiles.git ~/dotfiles
cd ~/dotfiles
type -P rake &>/dev/null && rake || install_rake

function install_rake {
	if [ "$(uname)" == "Darwin" ]; then

		if test ! $(which brew); then
		  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		fi

	    brew install rake
	elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	    sudo apt-get -y rale
	fi

	rake
}
