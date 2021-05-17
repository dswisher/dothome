
" include guard; quit if vimwiki isn't loaded
if ! exists(':VimwikiMakeDiaryNote')
    finish
endif

" Put this back, if I ever switch from vifm back to netrw
" nmap <Nop> <Plug>VimwikiRemoveHeaderLevel

nmap <leader>d <Plug>VimwikiMakeDiaryNote
nmap <leader>t :edit ~/git/vimwiki/todo.wiki<CR>
nmap <leader>wf :Files ~/git/vimwiki/<CR>

" From https://mkaz.blog/working-with-vim/vimwiki/
" tried using auto_diary_index in main vimrc, but this seems to work better?
augroup vimwikigroup
autocmd!
    " automatically update links on read diary
    autocmd BufRead,BufNewFile diary.wiki VimwikiDiaryGenerateLinks
augroup end

" From https://github.com/vimwiki/vimwiki/issues/245
" Add title to new wiki pages
" TODO - be smarter about diary pages
autocmd BufNewFile *.wiki :r! echo # %:t:r

" remap diary nav, as default ctrl-up and ctrl-down do not work well on a map
" TODO - add <silent>?
" TODO - put these in augroup?
" TODO - move to filetype plugin? See https://vi.stackexchange.com/a/10666
autocmd FileType vimwiki nmap <buffer> <C-k> <Plug>VimwikiDiaryPrevDay
autocmd FileType vimwiki nmap <buffer> <C-j> <Plug>VimwikiDiaryNextDay

" From https://vimwiki.github.io/vimwikiwiki/Tips%20and%20Snips.html
function! VimwikiFindAllIncompleteTasks()
    VimwikiSearch /- \[ \]/
    lopen
endfunction

nmap <Leader>wa :call VimwikiFindAllIncompleteTasks()<CR>

" From :help VimwikiLinkHandler - add vfile scheme
function! VimwikiLinkHandler(link)
  " Use Vim to open external files with the 'vfile:' scheme.  E.g.:
  "   1) [[vfile:~/Code/PythonProject/abc123.py]]
  "   2) [[vfile:./|Wiki Home]]
  let link = a:link
  if link =~# '^vfile:'
    let link = link[1:]
  else
    return 0
  endif
  let link_infos = vimwiki#base#resolve_link(link)
  if link_infos.filename == ''
    echomsg 'Vimwiki Error: Unable to resolve link!'
    return 0
  else
    " exe 'tabnew ' . fnameescape(link_infos.filename)
    exe 'e ' . fnameescape(link_infos.filename)
    return 1
  endif
endfunction

