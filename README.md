
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

