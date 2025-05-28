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
      transparent_background = true,
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
        mocha = { -- oh lucy
          -- base = "#131a26"
          rosewater = "#f5e0dc",
          flamingo = "#f2cdcd",
          pink = "#fb7da7", -- c
          mauve = "#fb7da7", -- c
          red = "#fb7da7", -- c
          maroon = "#fb7da7", -- c
          peach = "#fdad5d", -- c
          yellow = "#e3cf65", -- c
          green = "#76c5a4", -- c
          teal = "#51c7da", -- c
          sky = "#89dceb",
          sapphire = "#51c7da",
          blue = "#51c7da", -- c
          lavender = "#af98e6", -- c
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
          -- base = "#0d1017",
          mantle = "#14161e",
          crust = "#0e0f15",
        },
        frappe = { -- material
          rosewater = "#FF5370", -- or use this for red if you want
          flamingo  = "#FF5370", -- red
          pink      = "#F48FB1", -- suggested pink
          mauve     = "#C792EA", -- purple
          red       = "#FF5370",
          maroon    = "#C792EA", -- or deeper pink tone
          peach     = "#FF5370", -- orange
          -- peach     = "#F77669", -- orange
          yellow    = "#FFCB6B",
          green     = "#C3E887",
          teal      = "#58BCB3", -- torquoise
          sky       = "#80CBC4", -- cyan
          sapphire  = "#82B1FF", -- blue
          blue      = "#82B1FF",
          lavender  = "#C792EA", -- matching purple
          brown     = "#A1887F", -- suggested brown
          text      = "#C3D3DE", -- white/dark
          subtext1  = "#B0BEC5",
          subtext0  = "#90A4AE",
          overlay2  = "#78909C",
          overlay1  = "#607D8B",
          overlay0  = "#546E7A", -- comment
          surface2  = "#455A64",
          surface1  = "#37474F",
          surface0  = "#2E3C43",
          base      = "#263238", -- background
          mantle    = "#263238", -- same as base for flat look
          crust     = "#1E272C", -- slightly darker for contrast
        },
        macchiato = { -- ayu
          rosewater = "#F5B8AB",
          flamingo = "#F29D9D",
          pink = "#AD6FF7",
          mauve = "#FF8F40",
          red = "#E66767",
          maroon = "#EB788B",
          peach = "#FAB770",
          yellow = "#FACA64",
          green = "#70CF67",
          teal = "#4CD4BD",
          sky = "#61BDFF",
          sapphire = "#4BA8FA",
          blue = "#00BFFF",
          lavender = "#00BBCC",
          text = "#C1C9E6",
          subtext1 = "#A3AAC2",
          subtext0 = "#8E94AB",
          overlay2 = "#7D8296",
          overlay1 = "#676B80",
          overlay0 = "#464957",
          surface2 = "#3A3D4A",
          surface1 = "#2F313D",
          surface0 = "#1D1E29",
          base = "#0b0b12",
          mantle = "#11111a",
          crust = "#191926",
        },
        -- mocha = {
        --       base = "#1d1f21",     -- background
        --       mantle = "#282a2e",   -- line
        --       crust = "#4d5057",    -- window
        --
        --       text = "#c5c8c6",     -- foreground
        --       subtext1 = "#969896", -- comment
        --       subtext0 = "#969896", -- comment fallback
        --
        --       surface2 = "#373b41", -- selection
        --       surface1 = "#282a2e", -- line (reused)
        --       surface0 = "#1d1f21", -- background (reused)
        --
        --       overlay2 = "#c5c8c6", -- general overlay matching text
        --       overlay1 = "#c5c8c6",
        --       overlay0 = "#c5c8c6",
        --
        --       rosewater = "#f0c674", -- loosely matches yellow (semantic mismatch)
        --       flamingo = "#de935f",  -- orange
        --       pink = "#b294bb",      -- purple
        --       mauve = "#b294bb",     -- purple
        --       red = "#cc6666",       -- red
        --       maroon = "#cc6666",    -- red (alt)
        --       peach = "#de935f",     -- orange
        --       yellow = "#f0c674",    -- yellow
        --       green = "#b5bd68",     -- green
        --       teal = "#8abeb7",      -- aqua
        --       blue = "#81a2be",      -- blue
        --       sky = "#81a2be",       -- blue (reused)
        --       sapphire = "#81a2be",  -- blue (reused)
        --       lavender = "#b294bb",  -- purple (reused)
        -- }
      },
      -- color_overrides = {
      --   mocha = {
      --     -- base = "#131a26"
      --   rosewater = "#f5e0dc",
      --   flamingo = "#f2cdcd",
      --   pink = "#fb7da7", -- c
      --   mauve = "#fb7da7", -- c
      --   red = "#dfdfdf", -- c
      --   maroon = "#fb7da7", -- c
      --   peach = "#fdad5d", -- c
      --   yellow = "#e3cf65", -- c
      --   green = "#e3cf65", -- c
      --   teal = "#51c7da", -- c
      --   sky = "#89dceb",
      --   sapphire = "#51c7da",
      --   blue = "#76c5a4", -- c
      --   lavender = "#fb7da7", -- c
      --   text = "#dfdfdf",
      --   subtext1 = "#bac2de",
      --   subtext0 = "#a6adc8",
      --   overlay2 = "#9399b2",
      --   overlay1 = "#7f849c",
      --   overlay0 = "#6c7086",
      --   surface2 = "#585b70",
      --   surface1 = "#45475a",
      --   surface0 = "#313244",
      --   base = "#1a1d27",
      --   mantle = "#181825",
      --   crust = "#11111b",
      --
      --
      --   },
      -- },
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
    -- vim.cmd.colorscheme "catppuccin-latte"
    -- vim.cmd.colorscheme "catppuccin-macchiato"
    -- vim.cmd "hi! default link CursorLineNr CursorLine"

  end

}
