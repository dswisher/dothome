
" Mappings for things that use the current cursor location
nnoremap <buffer> gd :OmniSharpGotoDefinition<CR>
nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

" Finds members in the current buffer
nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

" Display the type name/documentation/signature of symbol under the cursor
nnoremap <buffer> <Leader>ft :OmniSharpTypeLookup<CR>
nnoremap <buffer> <Leader>fd :OmniSharpDocumentation<CR>
nnoremap <buffer> <Leader>fg :OmniSharpSignatureHelp<CR>

" Fuzzy-search thru code actions
nnoremap <buffer> <Leader>ff :OmniSharpGetCodeActions<CR>

" Populate quickfix with all code issues in solution
nnoremap <buffer> <Leader>fb :OmniSharpGlobalCodeCheck<CR>

" Navigate between methods/classes
nnoremap <buffer> <Leader>f<Up> :OmniSharpNavigateUp<CR>
nnoremap <buffer> <Leader>f<Down> :OmniSharpNavigateDown<CR>

" Fix usings
nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>

