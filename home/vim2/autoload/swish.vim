" swish: my custom bits, until I figure out a better way to organize them.
"

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction


function! swish#SetupCoc() abort

    " Use `[g` and `]g` to navigate diagnostics
    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    " GoTo code navigation.
    nmap <buffer> <silent> gd <Plug>(coc-definition)
    nmap <buffer> <silent> gy <Plug>(coc-type-definition)
    nmap <buffer> <silent> gi <Plug>(coc-implementation)
    nmap <buffer> <silent> gr <Plug>(coc-references)

    " Use K to show documentation in preview window.
    nnoremap <silent> K :call <SID>show_documentation()<CR>
endfunction


function! swish#SetupOmnisharp() abort
    " The following commands are contextual, based on the cursor position.
    nnoremap <buffer> <silent> gd :OmniSharpGotoDefinition<CR>
    nnoremap <buffer> <silent> <Leader>fi :OmniSharpFindImplementations<CR>
    nnoremap <buffer> <silent> <Leader>fs :OmniSharpFindSymbol<CR>
    nnoremap <buffer> <silent> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    nnoremap <buffer> <silent> <Leader>fm :OmniSharpFindMembers<CR>

    " Display the type name/documentation/signature of symbol under the cursor
    nnoremap <buffer> <silent> <Leader>ft :OmniSharpTypeLookup<CR>
    nnoremap <buffer> <silent> <Leader>fd :OmniSharpDocumentation<CR>
    nnoremap <buffer> <silent> <Leader>fg :OmniSharpSignatureHelp<CR>

    " Fuzzy-search thru code actions
    nnoremap <buffer> <silent> <Leader>ff :OmniSharpGetCodeActions<CR>

    " Populate quickfix with all code issues in solution
    nnoremap <buffer> <silent> <Leader>fb :OmniSharpGlobalCodeCheck<CR>

    " Navigate between methods/classes
    nnoremap <buffer> <silent> <Leader>f<Up> :OmniSharpNavigateUp<CR>
    nnoremap <buffer> <silent> <Leader>f<Down> :OmniSharpNavigateDown<CR>

    " Fix usings
    nnoremap <buffer> <silent> <Leader>fx :OmniSharpFixUsings<CR>
endfunction

