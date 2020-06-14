" include guard; quit if vim-lsp isn't loaded
if ! exists("g:lsp_loaded")
    finish
endif

" let g:lsp_diagnostics_enabled = 0           " diagnostics support
let g:lsp_diagnostics_echo_cursor = 1       " enable echo under cursor when in normal mode

" This doesn't help with Python diagnostics. Looking at vim-lsp.log (see below), the
" diagnostics list coming back from PyLS is always empty.
let g:lsp_settings = {
\   'pyls': {
\     'workspace_config': {
\       'pyls': {
\         'configurationSources': ['flake8']
\       }
\     }
\   },
\}

" A little debugging
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')

