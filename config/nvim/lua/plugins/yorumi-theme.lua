return {
  'yorumicolors/yorumi.nvim',
  enabled = true,
  config = function ()
    vim.cmd("colorscheme yorumi")
    vim.cmd([[
      " hi Normal guibg=NONE
      " hi LineNr guibg=NONE ctermbg=NONE
      " hi SignColumn guibg=NONE ctermbg=NONE
      hi Pmenu guibg=#343742
      hi PmenuKind guibg=#343742
      hi PmenuSel guibg=#1c4642
      hi Search guibg=#1c4642
    ]])
  end

}
