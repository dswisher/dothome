" include guard; quit if vim-fugitive isn't loaded
if ! exists(':Git')
    finish
endif

nnoremap <leader>gb :Git blame<CR>
nnoremap <leader>gl :Git log<CR>
nnoremap <leader>gs :Git<CR>

