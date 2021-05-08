#!/bin/bash

# TODO - super hacky! Need to clean this up!

ls -F /Users/swisherd/git/rnc | grep '/' | sed 's/^/\/Users\/swisherd\/git\/rnc\//'

