return {
  'rose-pine/neovim',
  name = 'rose-pine',
  enabled = true,
  config = function()
    require("rose-pine").setup({
      variant = "main", -- auto, main, moon, or dawn
      dark_variant = "main", -- main, moon, or dawn
      bold_vert_split = true,
      enable = {
        terminal = true,
        legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
      },
      styles = {
        bold = false,
        italic = false,
        transparency = false,
      },
      groups = {
        punctuation = 'pine',
      },
      -- before_highlight = function(group, highlight, palette)
      --   -- Change palette colour
      --   if highlight.bg == palette.base then
      --       highlight.bg = '#000000'
      --       -- highlight.bg = 'none'
      --   end
      -- end,
      -- palette = {
      --   not working Override the builtin palette per variant
      --   main = {
      --       base = '#440000',
      --       overlay = '#363738',
      --   },
      -- },
      highlight_groups = {
        -- Normal = { bg = '#000000' },
        -- Normal = { bg = 'none' },
        -- SignColumn = { bg = '#000000' },
        ColorColumn = { bg = 'rose' },

        -- Blend colours against the "base" background
        -- StatusLine = { bg = 'pine' , fg = '#000000' },
        -- StatusLineNC = { bg = '#403d52', fg = '#000000' },
        CursorLine = { bg = 'foam', blend = 10 },
        -- Pmenu = { fg = 'love', bg = 'highlight_low' },
        PmenuSel = { fg = 'base', bg = 'pine' },

        TelescopeBorder = { fg = "highlight_high", bg = "none" },
        TelescopeNormal = { bg = "none" },
        TelescopePromptNormal = { bg = "base" },
        TelescopeResultsNormal = { fg = "subtle", bg = "none" },
        TelescopeMatching = { fg = "love" },
        DiffAdd = { bg = "#83c092", blend = 50},
        -- TelescopeSelection = { fg = "text", bg = "base" },
        -- TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
      }
    })

    -- vim.cmd('colorscheme rose-pine')
	  -- local palette = require("rose-pine.palette")
    -- palette.base = "#0000ff"
    -- print(vim.inspect(require('rose-pine').palette))
    -- print(vim.inspect(palette))
    -- local options = require("rose-pine.config").options
    -- print(vim.inspect(options))
    -- vim.cmd('colorscheme rose-pine-main')
    -- vim.cmd('colorscheme rose-pine-moon')
  end
}
