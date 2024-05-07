-- vim.g.mapleader = ","
-- vim.g.maplocalleader = ","

local opts = { noremap = true, silent = true }
-- local opts = { remap = false, silent = true }

local keymap = vim.keymap.set

-- TODO: fix it. This doesn't work properly. It doesn't show : until I hit another key after.
-- keymap("", "<space>", ":", opts)

-- temp solution below
-- keymap("", "<space>", "<nop>", opts)
--
-- vim.cmd([[
-- nnoremap <space> :
-- ]])

-- open config
-- keymap("n", "<C-n>v", ":e $MYVIMRC<cr>", opts)
-- keymap("n", "<C-n>h", ":Telescope help_tags<cr>", opts)

keymap("n", "<C-d>", ":bnext<cr>", opts)
keymap("n", "<C-s>", ":bprev<cr>", opts)

-- barbar
keymap("n", "<A-m>", ":BufferPrevious<cr>", opts)
keymap("n", "<A-,>", ":BufferNext<cr>", opts)
keymap("n", "<A-p>", ":BufferPrevious<cr>", opts)
keymap("n", "<A-n>", ":BufferNext<cr>", opts)
keymap("n", "<A-g>", ":b#<cr>", opts)

-- disable ZZ so I don't accidently hit it when running zz
keymap("", "ZZ", "<nop>", opts)

keymap("n", "<leader>l", ":nohlsearch<cr>", opts)

keymap({"n", "v"}, "<leader>c", ":TComment<cr>", opts)

keymap("n", "<leader>.", ":ColorizerToggle<cr>", opts)

-- keymap("n", "<leader>q", ":Bclose<cr>", opts)
keymap("n", "<leader>q", ":BufferClose<cr>", opts)

-- -- telescope
-- local builtin = require('telescope.builtin')
-- -- keymap('n', '<leader>f', builtin.find_files, {})
--
--
-- keymap('n', '<leader>f', builtin.find_files, {})
-- keymap('n', '<C-n>c', builtin.highlights, {})
--
--
-- -- keymap('n', '<leader>f', function()
-- --   -- You can pass additional configuration to telescope to change theme, layout, etc.
-- --   builtin.find_files(require('telescope.themes').get_dropdown {
-- --     previewer = false,
-- --   })
-- -- end, { desc = '[/] Fuzzily search in current buffer' })
--
--
--
-- keymap('n', '<leader>/', function()
--   -- You can pass additional configuration to telescope to change theme, layout, etc.
--   builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
--     winblend = 10,
--     previewer = false,
--   })
-- end, { desc = '[/] Fuzzily search in current buffer' })
--
--
-- keymap('n', '<leader>F', builtin.live_grep, {})
-- keymap('n', '<leader>b', builtin.buffers, {})
-- keymap('n', '<leader>s', builtin.oldfiles, {})
-- keymap('n', '<leader>h', builtin.help_tags, {})
-- keymap('n', '<leader>x', builtin.commands, {})
-- keymap('n', '<leader>m', builtin.marks, {})
-- keymap('n', '<M-x>', builtin.commands, {})
-- keymap('n', '<M-f>', builtin.live_grep, {})
-- keymap('n', '<C-n>m', builtin.keymaps, {})

-- nerdtree settings. Trying neotree instead
-- keymap("", "<leader>t", ":NERDTreeToggle<cr>", opts)

-- fugitive
keymap("n", "<leader>gs", ":Git<cr>", opts)

-- select current line from first non-empty character till the end of line excluding new line character
keymap("n", "val", ":norm ^vg_<cr>", opts)


keymap("n", "<leader>b", ":silent !tmux send-keys -t .bottom 'python3 ' % C-m<cr>", opts)


