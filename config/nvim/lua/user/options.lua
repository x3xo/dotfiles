local options = {
  number = true, backup = true,
  backupdir = vim.fn.stdpath('state') .. "/backup//",
  directory = vim.fn.stdpath('state') .. "/swap//",
  undofile = true,
  undodir = vim.fn.stdpath('state') .. "/undo//",
  clipboard = "unnamedplus",
  wrap = false,
  mouse = "a",
  mousemodel = "extend", -- disable right click menu for copy, paste etc.
  -- tabs vs spaces
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  expandtab = true,
  -- search
  ignorecase = true,
  smartcase = true,
  hlsearch = true,
  incsearch = true,
  pumheight = 20, -- pop up menu height
  modelines = 0, -- Disable reading vim variables & options from special comments within file header or footer
  --
  updatetime = 250,
  --shortmess+      = c -- TODO: check what this does
  signcolumn = "yes",
  cursorline = true,
  termguicolors = true,
  wildmenu = true,
  wildmode = "longest,full",
  splitbelow = true,
  showmode = true, -- disable showing mode under status line since lualine shows it already. Enable if not using lualine
  splitright = true,
  laststatus = 2, -- set to 3 for global status line
}

for k, v in pairs(options) do
  vim.opt[k] = v
end


-- vim.api.nvim_create_autocmd({ "BufWritePre" }, {
--   pattern = "*.lua",
--   -- command = "normal mpgg=G`pzz",
--   callback = function()
--     vim.lsp.buf.format({
--       formatting_options = {
--         tabSize = 2,
--         insertSpaces = true,
--         -- trimFinalNewlines = false, -- this doesn't seem to work
--         insertFinalNewline = true,
--       },
--     })
--   end
-- })

-- vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

-- vimscript stuff

vim.cmd([[

" map space to :
" nnoremap <space> :

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" backup file naming to include path
"augroup setBakcupFileName
"  autocmd!
"  au BufWritePre * let &backupext = '@' . substitute(expand('%:p:h'), '/', '%', 'g') . '~'
"augroup END

" fix stupid auto commenting
augroup fixAutoComment
autocmd!
" set formatoptions-=o "dont continue comments when pushing o/O
" autocmd FileType * set formatoptions-=o
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o formatoptions-=t
augroup END

" don't map Bclose to 'bd
"let g:no_plugin_maps=1
let g:bclose_no_plugin_maps=1

set notimeout
set ttimeout
set timeoutlen=2000
set ttimeoutlen=30

" nerdtree settings
let g:NERDTreeHijackNetrw=0
let g:NERDTreeDirArrows=1
let g:NERDTreeMouseMode=2

" highlighted yank settings
hi HighlightedyankRegion guibg=#2D7067 guifg=#FFFFFF
let g:highlightedyank_highlight_duration = 400

" colorizer
let g:colorizer_fgcontrast=0

]])
