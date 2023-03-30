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

  -- { "catppuccin/nvim", name = "catppuccin" },

  -- 'navarasu/onedark.nvim',
  'sainnhe/everforest',
  'christoomey/vim-tmux-navigator',
  -- 'preservim/nerdtree',
  'ryanoasis/vim-devicons',
  -- 'mbbill/undotree',
  'pacha/vem-tabline',
  {
    'tpope/vim-fugitive',
    cmd = { "G", "Git"},
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
  'j-hui/fidget.nvim',
  'machakann/vim-highlightedyank',
}

