return {
  'oxfist/night-owl.nvim',
  name = 'nigh-owl',
  enabled = false,
  config = function()
    require('night-owl').setup({
      -- These are the default settings
      bold = true,
      italics = false,
      underline = true,
      undercurl = true,
      transparent_background = false,
    })
    vim.cmd.colorscheme("night-owl")
  end
}
