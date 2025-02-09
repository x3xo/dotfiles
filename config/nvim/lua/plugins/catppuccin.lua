return {
  "catppuccin/nvim", name = "catppuccin",
  enabled = false,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      background = { -- :h background
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = false, -- show the '~' characters after the end of buffers
      term_colors = false,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      no_italic = true, -- Force no italic
      no_bold = false, -- Force no bold
      -- styles = {
      --   comments = { "italic" },
      --   conditionals = { "italic" },
      --   loops = {},
      --   functions = {},
      --   keywords = {},
      --   strings = {},
      --   variables = {},
      --   numbers = {},
      --   booleans = {},
      --   properties = {},
      --   types = {},
      --   operators = {},
      -- },
      color_overrides = {
        -- mocha = {
        --   base = "#131a26"
        -- },
      },
      custom_highlights = {
        TelescopeMatching = { fg = "#ff0000" },
        TelescopeSelection = { bg = "#45475a", fg = "#ffffff" },
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })

    -- setup must be called before loading
    -- vim.cmd.colorscheme "catppuccin"
    -- vim.cmd "hi! default link CursorLineNr CursorLine"

  end

}
