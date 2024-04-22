return {
  'nvim-telescope/telescope.nvim', tag = '0.1.4',
  dependencies = { {'nvim-lua/plenary.nvim'}, {'nvim-telescope/telescope-ui-select.nvim' } },
  config = function()

    local actions = require('telescope.actions')

    require('telescope').setup({
      defaults = {
        layout_strategy = 'vertical',
        layout_config = {
          vertical = { width = 0.7, height = 0.95 }
          -- other layout configuration here
        },
        -- other defaults configuration here
        -- preview = false,
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown {
            -- even more opts
          }
        }
      },
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
    keymap("n", "<C-n>v", ":Telescope find_files cwd=$HOME/.config/nvim<cr>", opts)
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


    keymap('n', '<leader>ff', builtin.find_files, {})
    keymap('n', '<leader>fg', builtin.live_grep, {})
    keymap('n', '<leader>fb', builtin.buffers, {})
    keymap('n', '<leader>fs', builtin.oldfiles, {})
    keymap('n', '<leader>fh', builtin.help_tags, {})
    keymap('n', '<leader>fx', builtin.commands, {})
    keymap('n', '<leader>fm', builtin.marks, {})
    keymap('n', '<leader>F', builtin.live_grep, {})
    keymap('n', '<M-x>', builtin.commands, {})
    keymap('n', '<M-f>', builtin.live_grep, {})
    keymap('n', '<C-n>m', builtin.keymaps, {})
  end,
}

