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

  'navarasu/onedark.nvim',
  'sainnhe/everforest',
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
  'j-hui/fidget.nvim',
  'machakann/vim-highlightedyank',
  { -- Add indentation guides
    'lukas-reineke/indent-blankline.nvim',
    opts = {
      char = '┊',
      -- char = '┃',
      -- char = '│',
      show_trailing_blankline_indent = false,
    },
  },
  {
    'folke/neodev.nvim',
    config = function()
      require('neodev').setup()
    end
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
  },

  -- buffers as tabs. Replacing vem-tabline
  { 'romgrk/barbar.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = false,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
