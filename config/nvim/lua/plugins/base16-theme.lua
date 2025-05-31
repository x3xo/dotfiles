return {
  'chriskempson/base16-vim',
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    vim.cmd([[
    " hi Normal guibg=NONE ctermbg=NONE
    " hi LineNr guibg=NONE ctermbg=NONE
    " hi SignColumn guibg=NONE ctermbg=NONE
    " hi EndOfBuffer guibg=NONE ctermbg=NONE
    " hi CursorLine guibg=#1b2b34
    " hi DiffAdded guifg=#000000
    " hi DiffRemoved guifg=#000000
    " hi! default link CursorLineNr CursorLine

      " colorscheme base16-classic-dark
      " colorscheme base16-default-dark
      " colorscheme base16-oceanicnext
      colorscheme base16-espresso
      hi clear PmenuSel
      hi PmenuSel guibg=#31748f
      hi PmenuSel guibg=#31748f
      hi BlinkCmpSignatureHelpActiveParameter guibg=#31748f
      hi BlinkCmpSignatureHelp guibg=#332d41
      hi LineNr guibg=NONE ctermbg=NONE
      hi SignColumn guibg=NONE ctermbg=NONE
    ]])
  end,
}
