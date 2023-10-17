return {
  'rose-pine/neovim',
  name = 'rose-pine',
  config = function()
    require("rose-pine").setup({
      bold_vert_split = true,
      groups = {
        punctuation = 'pine',
      },
      highlight_groups = {
        -- Normal = { bg = '#000000' },
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
    -- vim.cmd('colorscheme rose-pine-moon')
  end
}
