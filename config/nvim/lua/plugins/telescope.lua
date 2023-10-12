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


          local keymap = vim.keymap.set
          local opts = { noremap = true, silent = true }
          -- telescope
          local builtin = require('telescope.builtin')
          -- keymap('n', '<leader>f', builtin.find_files, {})


          keymap("n", "<C-n>v", ":Telescope find_files cwd=$HOME/.config/nvim<cr>", opts)
          keymap('n', '<leader>f', builtin.find_files, {})
          keymap('n', '<C-n>c', builtin.highlights, {})


          -- keymap('n', '<leader>f', function()
            --   -- You can pass additional configuration to telescope to change theme, layout, etc.
            --   builtin.find_files(require('telescope.themes').get_dropdown {
              --     previewer = false,
              --   })
              -- end, { desc = '[/] Fuzzily search in current buffer' })



              keymap('n', '<leader>/', function()
                -- You can pass additional configuration to telescope to change theme, layout, etc.
                builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                  winblend = 10,
                  previewer = false,
                })
              end, { desc = '[/] Fuzzily search in current buffer' })


              keymap('n', '<leader>F', builtin.live_grep, {})
              keymap('n', '<leader>b', builtin.buffers, {})
              keymap('n', '<leader>s', builtin.oldfiles, {})
              keymap('n', '<leader>h', builtin.help_tags, {})
              keymap('n', '<leader>x', builtin.commands, {})
              keymap('n', '<leader>m', builtin.marks, {})
              keymap('n', '<M-x>', builtin.commands, {})
              keymap('n', '<M-f>', builtin.live_grep, {})
              keymap('n', '<C-n>m', builtin.keymaps, {})


        end,
}

