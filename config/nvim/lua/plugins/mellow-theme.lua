return {
  'mellow-theme/mellow.nvim',
  lazy = false,
  enabled = false,
  config = function()
    vim.cmd([[
      "" let g:mellow_transparent = 1
      colorscheme mellow
      hi Visual guibg=#084366
    ]])
  end,
}
