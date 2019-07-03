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
  SRC=~/.$1
  if [ -z "$2" ]; then
    DEST=$DIR/home/$1
  else
    DEST=$DIR/home/$2
  fi

	echo "Linking: $SRC -> $DEST"

	# If file exists (not a symlink), make a backup of the file
	if [ -e $SRC ] || [ -h $SRC ]
	then
		if [ ! -h $SRC ]
		then
			echo "Saving ~/.$1 to ~/.$1.SAVE"
			mv $SRC $SRC.SAVE
		else
			rm $SRC
		fi
	fi

	ln -s $DEST $SRC
}

tmuxcolorlink() {
  if [ `command -v tmux 2>/dev/null` ]; then
    TMUX_VERSION="$(tmux -V | sed 's/[a-z ]//g')"
    if [ -h ~/.tmux.conf.colors ]; then
      rm ~/.tmux.conf.colors
    fi

    if [ `echo "$TMUX_VERSION < 2.9" | bc -l` -eq 1 ]; then
      dolink "tmux.conf.colors" "tmux.conf.old.colors"
    else
      dolink "tmux.conf.colors" "tmux.conf.new.colors"
    fi
  fi
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
  tmuxcolorlink
;;

update)
	echoYellow "Update is not yet implemented."
;;

*)
	echoYellow "Command '$1' is unknown."
	echoYellow "Usage: $0 {update|link}"
	exit 1

esac

