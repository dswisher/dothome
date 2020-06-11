" include guard; quit if omnisharp isn't loaded
if ! exists('g:OmniSharp_loaded')
    finish
endif

" Use the stdio OmniSharp-roslyn server
let g:OmniSharp_server_stdio = 1

" Fetch full documentation during omnicomplete requests. By default, only Type/Method
" signatures are fetched.
let g:omnicomplete_fetch_full_documentation = 1

