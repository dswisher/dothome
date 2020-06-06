" include guard; quit if fzf-vim isn't loaded
if ! exists(':Buffers')
    finish
endif

nnoremap <leader>o :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>m :Marks<cr>

