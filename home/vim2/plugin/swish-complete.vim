" Make completion work a little more like I expect.

" https://vim.fandom.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set completeopt=longest,menuone

" Tweak the colors
highlight Pmenu ctermbg=White ctermfg=Gray
highlight PmenuSel ctermbg=DarkRed ctermfg=White

" Use ctrl-space to start completion. Note the wonky ctrl-@, which is a
" mac-ism? These do not seem to work, at least on my Mac.
" inoremap <C-Space> <C-x><C-o>
" inoremap <C-@> <C-Space>

" This works, but not sure I like it
" inoremap <leader>, <C-x><C-o>

