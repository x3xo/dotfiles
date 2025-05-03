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
        preview = false,
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

    -- local keymap = vim.keymap.set
    -- local opts = { noremap = true, silent = true }

    local default_opts = { noremap = true, silent = true }

    -- Helper function to set keymaps with merged options
    local function keymap(mode, lhs, rhs, custom_opts)
      local opts = vim.tbl_extend("force", default_opts, custom_opts or {})
      vim.keymap.set(mode, lhs, rhs, opts)
    end

    local wk = require("which-key")
    wk.add({
      { "<leader>f", group = "file" }, -- group
      { "<leader>b", group = "buffers", expand = function()
        return require("which-key.extras").expand.buf()
      end
    },
    {
      -- Nested mappings are allowed and can be added in any order
      -- Most attributes can be inherited or overridden on any level
      -- There's no limit to the depth of nesting
      mode = { "n", "v" }, -- NORMAL and VISUAL mode
      { "<leader>w", "<cmd>w<cr>", desc = "Write" },
    }
  })

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


    keymap('n', '<leader>ff', builtin.find_files, { desc = 'find files' })
    keymap('n', '<leader>fb', builtin.buffers, { desc = 'buffers' })
    keymap('n', '<bs>', builtin.buffers, { desc = 'buffers' })
    keymap('n', '<leader>fs', builtin.oldfiles, { desc = 'recent files' })
    keymap('n', '<leader>fh', builtin.help_tags, { desc = 'help tags' })
    keymap('n', '<leader>fx', builtin.commands, { desc = 'commands' })
    keymap('n', '<leader>fm', builtin.marks, { desc = 'marks' })
    keymap('n', '<leader>fr', builtin.resume, { desc = 'resume search' })
    keymap('n', '<leader>fg', builtin.live_grep, { desc = 'live grep' })
    keymap('n', '<leader>F', builtin.live_grep, { desc = 'live grep' })
    keymap('n', '<M-f>', builtin.live_grep, { desc = 'live grep' })
    keymap('n', '<M-x>', builtin.commands, { desc = 'commands' })
    keymap('n', '<C-n>m', builtin.keymaps, { desc = 'keymaps' })
    keymap('n', '<leader>ss', builtin.lsp_workspace_symbols, { desc = 'symbols' })
    keymap('n', '<leader>sr', builtin.lsp_references, { desc = 'references' })
  end,
}

