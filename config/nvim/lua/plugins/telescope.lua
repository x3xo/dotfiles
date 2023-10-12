return {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  dependencies = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-ui-select.nvim' } },
  config = function()
    require('telescope').setup({
      defaults = {
        layout_strategy = 'vertical',
        layout_config = {
          vertical = { width = 0.7, height = 0.95 }
          -- other layout configuration here
        },
        -- other defaults configuration here
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
            -- even more opts
          }

          -- pseudo code / specification for writing custom displays, like the one
          -- for "codeactions"
          -- specific_opts = {
          --   [kind] = {
          --     make_indexed = function(items) -> indexed_items, width,
          --     make_displayer = function(widths) -> displayer
          --     make_display = function(displayer) -> function(e)
          --     make_ordinal = function(e) -> string
          --   },
          --   -- for example to disable the custom builtin "codeactions" display
          --      do the following
          --   codeactions = false,
          -- }
        }
      },
      -- other configuration values here
      -- pickers = {
        --   find_files = {
          --     theme = "dropdown",
          --     layout_config = {
            --       width = 0.8,
            --       height = 0.3,
            --     }
            --   }
            -- }
          })
          -- Enable telescope fzf native, if installed
          pcall(require('telescope').load_extension, 'fzf')
          -- To get ui-select loaded and working with telescope, you need to call
          -- load_extension, somewhere after setup function:
          pcall(require('telescope').load_extension, 'ui-select')
        end,
}

