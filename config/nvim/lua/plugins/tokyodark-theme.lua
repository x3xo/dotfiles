return {
  "tiagovla/tokyodark.nvim",
  lazy = false,
  priority = 1000, -- recommended if you use tairiki as your default theme
  enabled = false,
  opts = {
    -- custom options here
  },
  config = function(_, opts)
    require("tokyodark").setup(opts) -- calling setup is optional
    vim.cmd [[colorscheme tokyodark]]
  end,
}
