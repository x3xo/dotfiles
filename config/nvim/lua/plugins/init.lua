return {
  -- "folke/which-key.nvim",
  -- { "folke/neoconf.nvim", cmd = "Neoconf" },
  -- "folke/neodev.nvim",

  -- My plugins here
  -- 'rstacruz/vim-closer',

  {
    'nvim-treesitter/playground',
    cmd = "TSPlaygroundToggle",
  },
  -- {'dracula/vim', as = 'dracula'},
  -- 'chriskempson/base16-vim',

  -- {
  --   'rose-pine/neovim',
  --   name = 'rose-pine',
  -- },

  -- 'navarasu/onedark.nvim',
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- Ensure it loads first
  -- },
  'christoomey/vim-tmux-navigator',
  -- 'preservim/nerdtree',
  'ryanoasis/vim-devicons',
  -- 'mbbill/undotree',
  -- 'pacha/vem-tabline', -- deprecated. Replaced with barbar
  {
    'tpope/vim-fugitive',
    cmd = { "G", "Git" },
  },
  {
    'junegunn/gv.vim',
    cmd = "GV",
  },
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'tpope/vim-characterize',
  {
    'tpope/vim-eunuch', -- Vim sugar for the UNIX shell commands that need it the most.
    cmd = { "Remove", "Delete", "Move", "Chmod", "Mkdir", "Cfind", "Clocate", "Lfind", "Wall", "SudoWrite", "SudoEdit" },
  },
  -- 'tpope/vim-projectionist',
  {
    'lambdalisue/suda.vim',
    cmd = "SudaWrite",
  },
  {
    'tomtom/tcomment_vim',
    cmd = "TComment",
  },
  -- 'airblade/vim-gitgutter',
  {
    'godlygeek/tabular',
    cmd = "Tabularize",
  },
  'rbgrouleff/bclose.vim',
  'norcalli/nvim-colorizer.lua',
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    event = "LspAttach",
    opts = {
      -- options
      text = {
        spinner = "dots_pulse",         -- animation shown when tasks are ongoing
        done = "✔",               -- character shown when all tasks are complete
        commenced = "Started",    -- message shown when task starts
        completed = "Completed",  -- message shown when task completes
      },
    },
  },
  'machakann/vim-highlightedyank',
  { -- Add indentation guides
    'lukas-reineke/indent-blankline.nvim',
    main = "ibl",
    opts = {
      -- char = '┊',
      indent = {
        char = "▏",
      -- char = '┃',
      -- char = '│',
      },
      -- show_trailing_blankline_indent = false,
    },
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },


}
