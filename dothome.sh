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
  SRC=$HOME/.$1
  if [ -z "$2" ]; then
    DEST=$DIR/home/$1
  else
    DEST=$DIR/home/$2
  fi

	# If file exists (not a symlink), make a backup of the file
	if [ -e $SRC ] || [ -h $SRC ]; then
		if [ ! -h $SRC ]; then
			echo "Saving $HOME/.$1 to $HOME/.$1.SAVE"
			mv $SRC $SRC.SAVE
		fi
	fi

  if [ ! -h $SRC ]; then
    echo "Linking: $SRC -> $DEST"
    ln -s $DEST $SRC
  fi
}

dounlink() {
  SRC=$HOME/.$1
  if [ -L $SRC ]; then
    echo "Removing link $SRC..."
    rm $SRC
  fi
}

dorelink() {
  SRC=$HOME/.$1
  DEST=$DIR/home/$2

  echo "Re-linking: $SRC -> $DEST"

  if [ -L $SRC ]; then
    rm $SRC
  fi

  ln -s $DEST $SRC
}

configlink() {
  SRC=$HOME/.config/$1
  DEST=$DIR/home/config/$1

  if [ ! -h $SRC ]; then
    echo "Linking: $SRC -> $DEST"
    ln -s $DEST $SRC
  fi
}

tmuxcolorlink() {
  if [ `command -v tmux 2>/dev/null` ]; then
    TMUX_VERSION="$(tmux -V | sed 's/[a-z ]//g')"
    if [ `echo "$TMUX_VERSION < 2.9" | bc -l` -eq 1 ]; then
      dolink "tmux.conf.colors" "tmux.conf.old.colors"
    else
      dolink "tmux.conf.colors" "tmux.conf.new.colors"
    fi
  fi
}

binlink() {
  for fpath in $DIR/bin/*; do
    fname=$(basename $fpath)
    if [ -h $HOME/bin/$fname ]; then
      true
    elif [ -f $HOME/bin/$fname ]; then
      echo "$HOME/bin/$fname exists! Skipping!"
    else
      echo "Linking $HOME/bin/$fname -> $DIR/bin/$fname..."
      ln -s $DIR/bin/$fname $HOME/bin/$fname
    fi
  done
}

vscodelink() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    SRC=$HOME/Library/Application\ Support/Code/User/$1
    DEST=$DIR/vscode/$1

    echo "Working on vscode link $SRC -> $DEST..."

    # If file exists (not a symlink), make a backup of the file
    if [ -e "$SRC" ] || [ -h "$SRC" ]; then
        if [ ! -h "$SRC" ]; then
            echo "Saving $SRC to $SRC.SAVE"
            mv "$SRC" "$SRC.SAVE"
        fi
    fi

    if [ ! -h "$SRC" ]; then
      echo "Linking: $SRC -> $DEST"
      ln -s "$DEST" "$SRC"
    fi
  else
    echo "Do not know how to symlink VSCode files on this OS."
  fi
}

case "$1" in
link)
	dolink "ackrc"
	dolink "ctags"
	dolink "flake8"
	dounlink "gvimrc"
	dolink "ideavimrc"
	# dolink "inputrc"
	dolink "ripgreprc"
	dolink "screenrc"
	# dolink "tigrc"
	dolink "tmux.conf"
	dounlink "vimrc"
	dorelink "vim" "vim2"
	dolink "zshrc"
	dolink "todo.cfg"
    dolink "config/vifm/vifmrc"
    configlink "yabai"
    configlink "skhd"
    # configlink "nvim"
    configlink "kitty"
    vscodelink "settings.json"
    vscodelink "keybindings.json"
  tmuxcolorlink
  if [ -d $HOME/bin ]; then
    binlink
  fi
;;

update)
	echoYellow "Update is not yet implemented."
;;

*)
	echoYellow "Command '$1' is unknown."
	echoYellow "Usage: $0 {update|link}"
	exit 1

esac

