" include guard; quit if vista isn't loaded
if ! exists("g:loaded_vista")
    finish
endif

" Executive used when opening vista sidebar without specifying it.
" See all the avaliable executives via `:echo g:vista#executives`.
let g:vista_default_executive = 'coc'

nnoremap <leader>vv :Vista!!<cr>

