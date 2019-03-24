## Setup

Clone this repo to some location (anyplace except home directory)

    cd ~
    mkdir git
    cd git
    git clone git@github.com:dswisher/dothome.git

Change into the directory and run:

    cd dothome
    ./dothome.sh link

Clone vundle (vim plugin manager) and install plugins:

	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall

Switch to zsh:

    sudo apt-get install zsh
    chsh -s $(which zsh)

## Misc

### Pyenv

To manage Python installs, use [pyenv](https://github.com/pyenv/pyenv).

One thing to note on OSX: for some things, like matplotlib to work, use the following to install Python versions:

    PYTHON_CONFIGURE_OPTS="--enable-framework CC=clang" pyenv install x.x.x

### Virtualenvwrapper

**NOTE**: use pyenv, instead!

I've written a simple virtualenv wrapper.
If you can use the real [virtualenvwrapper](https://bitbucket.org/dhellmann/virtualenvwrapper),
by all means do so. It is much more robust and full featured.

To set up my version, add the following two lines to your .bashrc:

    export VENV_DIR=~/virtualenvs
    source ~/git/dothome/myvirtualenv.sh

## TODO

### Include .bashrc and .profile

Look at some good examples:
* [webpro](https://github.com/webpro/awesome-dotfiles) - list of "Awesome dotfiles"
* [axsuul](https://github.com/axsuul/dotfiles/tree/master/home) - nicely breaks out aliases and whatnot
* [mathiasbynens](https://github.com/mathiasbynens/dotfiles) - great instructions for git-free install
* [catalin](https://github.com/alrra/dotfiles) - handles both MacOS and Ubuntu
* [netherdrake](https://github.com/Netherdrake/dotfiles) - large vimrc file; [minutevimtricks](https://www.youtube.com/channel/UCpdsZ1n09mwrbUGmU7lqnqA) on youtube
* [paulirish](https://github.com/paulirish/dotfiles)

Useful tidbits that should be incorporated
* [prompt](http://jakemccrary.com/blog/2015/05/03/put-the-last-commands-run-time-in-your-bash-prompt/) - last command's run time, etc in prompt.

### Support git-free install

See [mathiasbynens](https://github.com/mathiasbynens/dotfiles).


