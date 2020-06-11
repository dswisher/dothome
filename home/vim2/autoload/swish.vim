" swish: my custom bits, until I figure out a better way to organize them.
"

function! swish#SetupOmnisharpKeymap() abort
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
    nnoremap <buffer> <silent> <Leader>fk :OmniSharpNavigateUp<CR>
    nnoremap <buffer> <silent> <Leader>fj :OmniSharpNavigateDown<CR>

    " Fix usings
    nnoremap <buffer> <silent> <Leader>fx :OmniSharpFixUsings<CR>
endfunction

