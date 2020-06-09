" include guard; quit if nerdtree isn't loaded
if ! exists('loaded_nerd_tree')
    finish
endif

map <leader>t :NERDTreeToggle<CR>

