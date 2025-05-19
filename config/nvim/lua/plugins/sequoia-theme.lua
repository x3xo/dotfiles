return {
  "forest-nvim/sequoia.nvim",
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    vim.cmd("colorscheme sequoia-night") -- or 'sequoia-night' / 'sequoia-rise'
  end
}
