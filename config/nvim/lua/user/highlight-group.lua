vim.cmd([[
" Define the highlight_group() function
function! HighlightGroup()
    let group = synIDattr(synID(line('.'), col('.'), 1), 'name')
    echo "Highlight group: " . group
endfunction

" Map the <leader>h key combination to call the HighlightGroup() function
nnoremap <C-n>h :call HighlightGroup()<CR>

]])

