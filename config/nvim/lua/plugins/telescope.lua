return {
  'nvim-telescope/telescope.nvim', tag = '0.1.1',
  dependencies = { {'nvim-lua/plenary.nvim'} },
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
        end,
}

