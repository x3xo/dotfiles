vim.cmd([[
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.

" this breaks status line if I don't use airline

" set statusline
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" set statusline=%m\ [%t]\ [%{&ff}]\ %r\ Buf:\ #%n%=%{coc#status()}%{get(b:,'coc_current_function','')}\ %{FugitiveStatusline()}\ Line:\ %l/%L[%p%%]\ Col:\ %c\ [%b][0x%B]

" set statusline=%#IncSearch#
" set statusline=%#Error#
" set statusline+=%m
" set statusline+=%#Error#
" set statusline=%#PmenuSel#


" augroup MyStatuLineGroup
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd InsertLeave * highlight MyStatusLineFile guifg=#1d2021 guibg=#83a598
"   autocmd InsertEnter * highlight MyStatusLineFile guifg=#83a598 guibg=#1d2021
" augroup end

" highlight MyStatusLineFile guifg=#1d2021 guibg=#83a598
" highlight MyStatusLineFile guifg=#7d7a68 guibg=#292824

"  highlight MyStatusLineFile guifg=#1fad83 guibg=#292824
"  highlight MyStatusLineModified guifg=#E06C75 guibg=#2C323C   
"  highlight MyStatusLine guifg=#7d7a68 guibg=#292824

" set statusline=%#MyStatusLineFile#
" set statusline=%#Visual#

" set statusline=%#CocListBlackBlue#
"""" set statusline=
"""" set statusline+=\%#StatusLine#
"""" 
"""" " set statusline+=\ %t
"""" " set statusline+=%#MyStatusLineFile#
"""" " set statusline=%#PmenuSel#
"""" set statusline+=\ %f
"""" set statusline+=\ %#Error#
"""" set statusline+=%m
"""" set statusline+=\%#StatusLine#
"""" " set statusline+=%#Normal#
"""" " set statusline+=\ %#MyStatusLine#
"""" set statusline+=\ ℓ\ %4l/%L
"""" " set statusline+=\ %#MyStatusLineModified#
"""" 
"""" " set statusline+=%#MyStatusLine#
"""" set statusline+=%#StatusLine#
"""" " set statusline+=%#Normal#
"""" set statusline+=%h%r%w%q%k
"""" set statusline+=%=
"""" " set statusline+=%#MyStatusLine#
"""" " set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}
"""" " set statusline+=\ %{FugitiveStatusline()}
"""" " set statusline+=\ %{zoom#statusline()}
"""" set statusline+=\ b%n
"""" set statusline+=\ %y
"""" set statusline+=\ [%{&ff}]
"""" set statusline+=\ c%3c
"""" set statusline+=\ \|%3p%%
"""" 
"""" " this is an extra space
"""" set statusline+=\ 
"""" 
" set statusline+=\ [%b]
" set statusline+=[0x%B]


set statusline=
set statusline+=\ %f
"set statusline+=\ %#Error#
set statusline+=%m
"set statusline+=\%#StatusLine#
set statusline+=\ ℓ\ %4l/%L
set statusline+=%h%r%w%q%k
set statusline+=%=
set statusline+=\ b%n
set statusline+=\ %y
set statusline+=\ [%{&ff}]
set statusline+=\ c%3c
set statusline+=\ \|%3p%%

" this is an extra space
set statusline+=\ 

" set fillchars=stlnc:-

]])
