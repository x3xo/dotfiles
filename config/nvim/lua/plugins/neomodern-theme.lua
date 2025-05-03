return {
  "cdmill/neomodern.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("neomodern").setup({
      -- optional configuration here
      -- Can be one of: 'iceclimber' | 'gyokuro' | 'hojicha' | 'roseprime'
      theme = "iceclimber",
      -- Can be one of: 'light' | 'dark', or set via vim.o.background
      variant = "dark",
    })
    -- require("neomodern").load()
  end,
}
