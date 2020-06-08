" include guard; quit if fzf-vim isn't loaded
if ! exists(':Buffers')
    finish
endif

nnoremap <silent> <leader>o :Files<cr>
nnoremap <silent> <leader>b :Buffers<cr>
nnoremap <silent> <leader>m :Marks<cr>

nnoremap <silent> <leader>rg :Rg <C-R><C-W><CR>

