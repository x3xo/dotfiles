return {
  'mhartington/oceanic-next',
  enabled = false,
  config = function()
    vim.cmd([[
  let g:oceanic_next_terminal_bold = 0
  let g:oceanic_next_terminal_italic = 0
    " hi Normal guibg=NONE ctermbg=NONE
    " hi LineNr guibg=NONE ctermbg=NONE
    " hi SignColumn guibg=NONE ctermbg=NONE
    " hi EndOfBuffer guibg=NONE ctermbg=NONE
    " hi CursorLine guibg=#1b2b34
    " hi DiffAdded guifg=#000000
    " hi DiffRemoved guifg=#000000
    " hi! default link CursorLineNr CursorLine
    ]])
    vim.cmd.colorscheme "OceanicNext"
  end,

}
