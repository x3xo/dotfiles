return {
  'rose-pine/neovim',
  name = 'rose-pine',
  enabled = false,
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
      palette = {
        -- Override the builtin palette per variant
        -- moon = {
        --       base = '#000000',
        --       overlay = '#363738',
        --   },
        },
      -- before_highlight = function(group, highlight, palette)
      --   -- Change palette colour
      --   if highlight.bg == palette.base then
      --       highlight.bg = '#000000'
      --       -- highlight.bg = 'none'
      --   end
      -- end,
      highlight_groups = {
        -- Normal = { bg = '#000000' },
        -- Normal = { bg = 'none' },
        -- SignColumn = { bg = '#000000' },
        ColorColumn = { bg = 'rose' },
        -- Comment = { fg = 'highlight_med' },
        Comment = { fg = 'highlight_high' },

        -- Blend colours against the "base" background
        -- StatusLine = { bg = 'pine' , fg = '#000000' },
        -- StatusLineNC = { bg = '#403d52', fg = '#000000' },
        CursorLine = { bg = 'foam', blend = 10 },
        -- Pmenu = { fg = 'love', bg = 'highlight_low' },
        PmenuSel = { fg = 'base', bg = 'pine' },
        Search = { fg = 'base', bg = 'pine', blend = 100 },

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
    vim.cmd('colorscheme rose-pine-moon')
    -- vim.api.nvim_set_hl(0, "@keyword.return", { fg = "#ff0000" })

    local rose_pine_palette = require("rose-pine.palette")
    -- print(vim.inspect(rose_pine_palette))
    vim.api.nvim_set_hl(0, "@keyword.return", { fg = rose_pine_palette.love })

    vim.cmd([[
      hi BlinkCmpSignatureHelpActiveParameter guibg=#31748f
      hi BlinkCmpSignatureHelp guibg=#332d41
    ]])

  end
}
