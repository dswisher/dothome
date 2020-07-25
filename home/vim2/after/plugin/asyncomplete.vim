" include guard; quit if asynccompelte isn't loaded
if ! exists('g:asyncomplete_loaded')
    finish
endif


inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>\<cr>" : "\<cr>"

