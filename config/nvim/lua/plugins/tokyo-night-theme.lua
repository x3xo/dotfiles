return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  enabled = false,
  opts = {},
  config = function()
    require("tokyonight").setup({
      on_highlights = function(hl, c)
        local prompt = "#2d3149"
        -- hl.Normal = {
        --   bg = "#000000"
        -- }
        hl.TelescopeNormal = {
          bg = c.bg_dark,
          fg = c.fg_dark,
        }
        end,
      })

      -- vim.cmd[[colorscheme tokyonight-night]]
      -- vim.cmd[[colorscheme tokyonight-moon]]
    end
  }
