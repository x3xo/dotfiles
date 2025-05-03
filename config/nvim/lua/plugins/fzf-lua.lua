return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
  config = function ()
    require('fzf-lua').setup({})

    -- local keymap = vim.keymap.set
    -- keymap('n', '<leader>ff', FzfLua.files, {})
    -- keymap('n', '<leader>fb', FzfLua.buffers, {})
    -- keymap('n', '<leader>fs', FzfLua.oldfiles, {})
    -- keymap('n', '<leader>fh', FzfLua.helptags, {})
    -- keymap('n', '<leader>fx', FzfLua.commands, {})
    -- keymap('n', '<leader>fm', FzfLua.marks, {})
    -- keymap('n', '<leader>fr', FzfLua.resume, {})
    -- keymap('n', '<leader>fg', FzfLua.live_grep, {})
    -- keymap('n', '<leader>F', FzfLua.live_grep, {})
    -- keymap('n', '<M-f>', FzfLua.live_grep, {})
    -- keymap('n', '<M-x>', FzfLua.commands, {})
    -- keymap('n', '<C-n>m', FzfLua.keymaps, {})
    
  end
}
