return {
  'deparr/tairiki.nvim',
  lazy = false,
  priority = 1000, -- recommended if you use tairiki as your default theme
  enabled = false,
  config = function()
    vim.cmd('colorscheme tairiki-dark')
  end
}
