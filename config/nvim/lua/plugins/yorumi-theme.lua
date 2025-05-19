return {
  'yorumicolors/yorumi.nvim',
  enabled = true,
  config = function ()
    vim.cmd("colorscheme yorumi")
    vim.cmd([[
      hi Pmenu guibg=#343742
      hi PmenuKind guibg=#343742
      hi PmenuSel guibg=#1c4642
    ]])
  end

}
