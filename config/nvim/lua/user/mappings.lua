-- vim.g.mapleader = ","
-- vim.g.maplocalleader = ","

-- local opts = { noremap = true, silent = true }
-- local opts = { remap = false, silent = true }

-- local keymap = vim.keymap.set

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

local default_opts = { noremap = true, silent = true }

-- Helper function to set keymaps with merged options
local function keymap(mode, lhs, rhs, custom_opts)
  local opts = vim.tbl_extend("force", default_opts, custom_opts or {})
  vim.keymap.set(mode, lhs, rhs, opts)
end

keymap("n", "<leader>;", ":", { silent = false, desc = "command mode" })

keymap("n", "<C-d>", ":bnext<cr>", { desc = "next buffer" })
keymap("n", "<C-s>", ":bprev<cr>", { desc = "previous buffer" })

-- barbar
keymap("n", "<A-m>", ":BufferPrevious<cr>", { desc = "previous buffer" })
keymap("n", "<A-,>", ":BufferNext<cr>", { desc = "next buffer" })
keymap("n", "<A-p>", ":BufferPrevious<cr>", { desc = "previous buffer" })
keymap("n", "<A-n>", ":BufferNext<cr>", { desc = "next buffer" })
keymap("n", "<A-g>", ":b#<cr>", { desc = "alternate buffer" })
keymap("n", "<A-a>", ":b#<cr>", { desc = "alternate buffer" })

-- disable ZZ so I don't accidently hit it when running zz
keymap("", "ZZ", "<nop>", { desc = "" })

keymap("n", "<leader>l", ":nohlsearch<cr>", { desc = "nohlsearch" })

keymap({"n", "v"}, "<leader>c", ":TComment<cr>", { desc = "toggle comment" })

keymap("n", "<leader>k", ":ColorizerToggle<cr>", { desc = "toggle colorizer" })

-- keymap("n", "<leader>q", ":Bclose<cr>", { desc = "" })
keymap("n", "<leader>q", ":BufferClose<cr>", { desc = "close buffer" })
keymap("n", "<leader>Q", ":q<cr>", { desc = "quit" })

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
-- keymap("", "<leader>t", ":NERDTreeToggle<cr>", { desc = "" })

-- fugitive
keymap("n", "<leader>gs", ":Git<cr>", { desc = "git status" })

-- select current line from first non-empty character till the end of line excluding new line character
keymap("v", "al", ":norm ^vg_<cr>", { desc = "select line text" })


-- keymap("n", "<leader>b", ":silent !tmux send-keys -t .bottom 'python3 ' % C-m<cr>", { desc = "" })


-- cnoremap <silent><expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
-- cnoremap <silent><expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

-- Move to the next item in the popup menu in command mode
vim.api.nvim_set_keymap('c', '<C-j>', 'pumvisible() ? "\\<C-n>" : "\\<C-j>"', {expr = true})

-- Move to the previous item in the popup menu in command mode
vim.api.nvim_set_keymap('c', '<C-k>', 'pumvisible() ? "\\<C-p>" : "\\<C-k>"', {expr = true})

