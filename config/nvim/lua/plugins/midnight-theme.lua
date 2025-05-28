return {
  'dasupradyumna/midnight.nvim',
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    vim.cmd("colorscheme midnight")
    vim.cmd([[
      hi Normal guibg=NONE
      hi LineNr guibg=NONE ctermbg=NONE
      hi SignColumn guibg=NONE ctermbg=NONE
    ]])
  end
}
