#!/bin/bash

# Grab the location of this script
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# colors (except on Mac)
if [[ "$OSTYPE" == "darwin"* ]]; then
  red=''
  green=''
  yellow=''
  reset=''
else
  red='\e[0;31m'
  green='\e[0;32m'
  yellow='\e[0;33m'
  reset='\e[0m'
fi

echoRed() { echo -e "${red}$1${reset}"; }
echoGreen() { echo -e "${green}$1${reset}"; }
echoYellow() { echo -e "${yellow}$1${reset}"; }

dolink() {
	echo "Linking: ~/.$1 -> $DIR/$1"

	# If file exists (not a symlink), make a backup of the file
	if [ -e ~/.$1 ] || [ -h ~/.$1 ]
	then
		if [ ! -h ~/.$1 ]
		then
			echo "Saving ~/.$1 to ~/.$1.SAVE"
			mv ~/.$1 ~/.$1.SAVE
		else
			rm ~/.$1
		fi
	fi

	ln -s $DIR/home/$1 ~/.$1
}


case "$1" in
link)
	dolink "ackrc"
	dolink "ctags"
	dolink "flake8"
	dolink "gvimrc"
	dolink "ideavimrc"
	dolink "inputrc"
	dolink "screenrc"
	dolink "tigrc"
	dolink "tmux.conf"
	dolink "vimrc"
	dolink "vim"
	dolink "zshrc"
;;

update)
	echoYellow "Update is not yet implemented."
;;

*)
	echoYellow "Command '$1' is unknown."
	echoYellow "Usage: $0 {update|link}"
	exit 1

esac

