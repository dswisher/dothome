#!/bin/bash

# Grab the location of this script
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# colors
red='\e[0;31m'
green='\e[0;32m'
yellow='\e[0;33m'
reset='\e[0m'

echoRed() { echo -e "${red}$1${reset}"; }
echoGreen() { echo -e "${green}$1${reset}"; }
echoYellow() { echo -e "${yellow}$1${reset}"; }

dolink() {
	echo "Linking: ~/$1 -> $DIR/$1"
	rm -f ~/$1
	ln -s $DIR/$1 ~/$1
}


case "$1" in
link)
	dolink ".foo"
	dolink ".testdir"
#	echoYellow "Link is not yet implemented."
#	echoGreen "Dir: $DIR"
;;

update)
	echoYellow "Update is not yet implemented."
;;

*)
	echoYellow "Command '$1' is unknown."
	echoYellow "Usage: $0 {update|link}"
	exit 1

esac

