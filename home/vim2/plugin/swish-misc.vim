
" open netrw (directory browser) in the folder containing the current file
nnoremap <silent> <leader>e :e %:p:h<cr>

" make it easy to edit and reload vimrc
nnoremap <silent> <leader>ve :edit $MYVIMRC<CR>
nnoremap <silent> <leader>vs :source $MYVIMRC<CR>

" quickfix shortcuts
nnoremap <leader>qc :cclose<cr>
nnoremap <leader>qf :cfirst<cr>
nnoremap <leader>ql :clast<cr>
nnoremap <leader>qn :cnext<cr>
nnoremap <leader>qo :copen<cr>
nnoremap <leader>qp :cprev<cr>

