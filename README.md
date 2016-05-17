## Setup

Clone this repo to some location (anyplace except home directory)

	cd ~
	mkdir git
    git clone git@github.com:dswisher/dothome.git

Change into the directory and run:

    cd dothome
    ./dothome.sh link

Clone vundle (vim plugin manager) and install plugins:

	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

## Misc

### Virtualenvwrapper

I've written a simple virtualenv wrapper.
If you can use the real [virtualenvwrapper](https://bitbucket.org/dhellmann/virtualenvwrapper),
by all means do so. It is much more robust and full featured.

To set up my version, add the following two lines to your .bashrc:

    export VENV_DIR=~/virtualenvs
    source ~/git/dothome/myvirtualenv.sh

