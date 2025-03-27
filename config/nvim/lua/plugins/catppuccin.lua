return {
  "catppuccin/nvim", name = "catppuccin",
  enabled = true,
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
        mocha = {
          -- base = "#131a26"
        rosewater = "#f5e0dc",
        flamingo = "#f2cdcd",
        pink = "#fb7da7", -- c
        mauve = "#fb7da7", -- c
        red = "#dfdfdf", -- c
        maroon = "#fb7da7", -- c
        peach = "#fdad5d", -- c
        yellow = "#e3cf65", -- c
        green = "#e3cf65", -- c
        teal = "#51c7da", -- c
        sky = "#89dceb",
        sapphire = "#51c7da",
        blue = "#76c5a4", -- c
        lavender = "#fb7da7", -- c
        text = "#dfdfdf",
        subtext1 = "#bac2de",
        subtext0 = "#a6adc8",
        overlay2 = "#9399b2",
        overlay1 = "#7f849c",
        overlay0 = "#6c7086",
        surface2 = "#585b70",
        surface1 = "#45475a",
        surface0 = "#313244",
        base = "#1a1d27",
        mantle = "#181825",
        crust = "#11111b",


        },
      },
      -- custom_highlights = {
      --   TelescopeMatching = { fg = "#ff0000" },
      --   TelescopeSelection = { bg = "#45475a", fg = "#ffffff" },
      -- },
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
    vim.cmd.colorscheme "catppuccin"
    -- vim.cmd "hi! default link CursorLineNr CursorLine"

  end

}
