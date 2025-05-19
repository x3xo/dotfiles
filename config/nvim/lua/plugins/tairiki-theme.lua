return {
  'deparr/tairiki.nvim',
  lazy = false,
  priority = 1000, -- recommended if you use tairiki as your default theme
  enabled = false,
  config = function()
    vim.cmd('colorscheme tairiki-dark')
    vim.api.nvim_set_hl(0, "@keyword.return", { fg = '#cc6666' })
  end
}
