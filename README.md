## Setup

Clone this repo to some location (anyplace except home directory)

    cd ~
    mkdir git
    cd git
    git clone git@github.com:dswisher/dothome.git

Change into the directory and run:

    cd dothome
    ./dothome.sh link

Set up vim plugins:

	vim +PlugInstall +qall

Switch to zsh:

    MacOS:
    brew install zsh
    sudo vi /etc/shells
      (add `which zsh` output)
    chsh -s $(which zsh)

    Ubuntu:
    sudo apt-get install zsh
    chsh -s $(which zsh)

    Amazon Linux (chsh not present, must run chsh as root because don't know ec2-user password):
    sudo yum install util-linux-user zsh
    sudo chsh -s $(which zsh) $(whoami)

**NOTE**: you may have to edit `/etc/shells` and add `which zsh`

## Misc

### Pyenv

To manage Python installs, use [pyenv](https://github.com/pyenv/pyenv).

One thing to note on OSX: for some things, like matplotlib to work, use the following to install Python versions:

    PYTHON_CONFIGURE_OPTS="--enable-framework CC=clang" pyenv install x.x.x


## TODO

### Include .bashrc and .profile

Look at some good examples:
* [webpro](https://github.com/webpro/awesome-dotfiles) - list of "Awesome dotfiles"
* [axsuul](https://github.com/axsuul/dotfiles/tree/master/home) - nicely breaks out aliases and whatnot
* [mathiasbynens](https://github.com/mathiasbynens/dotfiles) - great instructions for git-free install
* [catalin](https://github.com/alrra/dotfiles) - handles both MacOS and Ubuntu
* [netherdrake](https://github.com/Netherdrake/dotfiles) - large vimrc file; [minutevimtricks](https://www.youtube.com/channel/UCpdsZ1n09mwrbUGmU7lqnqA) on youtube
* [paulirish](https://github.com/paulirish/dotfiles)
* [mkaz](https://github.com/mkaz/dotfiles) - [fzf and ripgrep](https://mkaz.blog/code/unix-is-my-ide/)

Useful tidbits that should be incorporated
* [prompt](http://jakemccrary.com/blog/2015/05/03/put-the-last-commands-run-time-in-your-bash-prompt/) - last command's run time, etc in prompt.

### Support git-free install

See [mathiasbynens](https://github.com/mathiasbynens/dotfiles).


