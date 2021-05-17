" include guard; quit if vifm isn't loaded
if ! exists(':Vifm')
    finish
endif

nnoremap <silent> <leader>e :Vifm<cr>

" TODO - these are currently in vimrc; I think "after" is the wrong place
" Use vifm instead of built-in netrw
" let g:vifm_replace_netrw = 1

" Disable netrw
" let g:loaded_netrw       = 1
" let g:loaded_netrwPlugin = 1

