"
"  Doug's VIM initialization file
"

" Vundle setup and load plugins
"   https://github.com/gmarik/Vundle.vim
set nocompatible        " don't try to be compatible with vi
filetype off

"set rtp+=~/.vim/bundle/Vundle.vim/
"call vundle#begin()

" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'

" Nerdtree - file explorer - https://github.com/scrooloose/nerdtree
"Plugin 'scrooloose/nerdtree'

" CtrlP - fuzzy file/buffer finder - https://github.com/kien/ctrlp.vim
"Plugin 'kien/ctrlp.vim'

" Syntastic - syntax checker - https://github.com/scrooloose/syntastic
"Plugin 'scrooloose/syntastic'

" Lightline - improved status line
"Plugin 'itchyny/lightline.vim'

"call vundle#end()            " required
"filetype plugin indent on    " required

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
set makeprg=xbuild      " doing mono development by default
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

"set tags=./tags;/		" look in current and all parent directories for tags file

" - - - - NerdTree Setup
"map <C-n> :NERDTreeToggle<CR>

" - - - - CtrlP Setup
"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/](\.(git|hg|svn)|(obj|bin))$',
"  \ 'file': '\v\.(exe|so|dll)$'
"  \ }

" - - - - Syntastic setup
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" - - - - Lightline setup
"if !has('gui_running')
"	  set t_Co=256
"endif

