
" TODO - add a guard!

" TODO - these look useful, but I never used them.
" nnoremap <silent> <leader>ad :ALEDisableBuffer<cr>
" nnoremap <silent> <leader>ae :ALEEnableBuffer<cr>
" nmap <silent> <leader>an <Plug>(ale_next_wrap)
" nmap <silent> <leader>ap <Plug>(ale_previous_wrap)

" Use quickfix instead of loclist
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1

highlight ALEError ctermbg=none cterm=underline
highlight ALEWarning ctermbg=none cterm=underline
highlight ALEInfo ctermbg=none cterm=underline

