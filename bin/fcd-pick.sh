#!/bin/bash

set -e

SCRATCH=/tmp/fcd.lst

# TODO - super hacky! Need to clean this up!

# echo " --> PARAM=$1"

ls -F /Users/swisherd/git/rnc | grep '/' | sed 's/^/\/Users\/swisherd\/git\/rnc\//' > $SCRATCH

if [[ "$1"  != "" ]]; then
    QUERY="-q $1"
fi

cat $SCRATCH | fzf $QUERY -1

