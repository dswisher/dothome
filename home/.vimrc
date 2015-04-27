"
"  Doug's VIM initialization file
"

" Vundle setup and load plugins
"   https://github.com/gmarik/Vundle.vim
set nocompatible        " don't try to be compatible with vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Nerdtree - file explorer - https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'


call vundle#end()            " required
filetype plugin indent on    " required

" - - - - - - 
" Set up the display: reverse video, rather large display
highlight Normal guibg=black guifg=white
set guifont=consolas\ 12

syntax on               " syntax coloring is very cool...turn it on...
" syntax sync fromstart


set autoindent          " always set autoindenting on
set hidden              " keep hidden buffers
set incsearch           " show search progress
set laststatus=2        " always show a status line
set ruler               " show line,column in status line
" set scrolloff=1         " keep a couple of lines above/below cursor
set shiftround          " round indent when using > and <
set shiftwidth=4        " when indenting, use 4 spaces
set shortmess=a         " abbreviate messages to get rid of [hit return] prompts
set showcmd             " show partial commands in status line
set tabstop=4           " work like the rest of marketwatch
set viminfo='50,/10     " save last ten find commands in viminfo file
set visualbell          " flash screen instead of beeping
set nowrap              " don't wrap lines
set wrapscan            " wrap searches around end of file
" set wildmenu

map <C-n> :NERDTreeToggle<CR>

" When starting to edit a file:
"   For *.c and *.h files set formatting of comments and set C-indenting on
"   For other files switch it off
"   Don't change the sequence, it's important that the line with * comes first.

"autocmd BufNewFile,BufRead  *           set nocindent
"autocmd BufNewFile,BufRead  *.c,*.h     set cindent cinoptions={4,c0

