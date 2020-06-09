
setlocal commentstring=//\ %s

if exists('g:OmniSharp_loaded')
    call swish#SetupOmnisharpKeymap()
endif

