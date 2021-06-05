" include guard; quit if fzf-vim isn't loaded
if ! exists(':Buffers')
    finish
endif

nnoremap <silent> <leader>o :Files<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>k :Marks<cr>

" 15-May-2021 - found I wasn't using this, and want to use leader-g for vim-fugitive
" nnoremap <silent> <leader>g :GFiles<cr>

nnoremap <silent> <leader>rg :Rg <C-R><C-W><CR>

