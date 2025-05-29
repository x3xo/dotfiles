local enabled = true

if enabled then
  return {
    {

      "2giosangmitom/nightfall.nvim",
      lazy = false,
      priority = 1000,
      enabled = false,
      opts = {
        transparent = true,
      }, -- Add custom configuration here
      config = function(_, opts)
        require("nightfall").setup(opts)
        vim.cmd("colorscheme nightfall") -- Choose from: nightfall, deeper-night, maron, nord
      end,
    },
    {
      "srcery-colors/srcery-vim"
    },
    {
      "phha/zenburn.nvim"
    },
    {
      "killitar/obscure.nvim",
      lazy = false,
      priority = 1000,
      opts = {}
    },
    'liuchengxu/space-vim-theme',
    'lunacookies/vim-colors-xcode',
    'Rigellute/rigel',
    'Yazeed1s/oh-lucy.nvim',
    'nelstrom/vim-mac-classic-theme',
    {
      "thesimonho/kanagawa-paper.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
      config = function ()
        require('kanagawa-paper').setup({})
        -- vim.cmd('colorscheme kanagawa-paper')
        -- vim.cmd('colorscheme kanagawa-paper-canvas')
      end
    },
    'sainnhe/everforest',
    {
      "vv9k/bogster"
    },
    {
      "nyoom-engineering/oxocarbon.nvim"
    },
    {
      'zacanger/angr.vim'
    },
    {
      'danilo-augusto/vim-afterglow'
    },
    {
      'challenger-deep-theme/vim'
    },
    {
      'hercules261188/cosmic_latte'
    },
    {
      'rakr/vim-two-firewatch'
    },
    {
      "nuvic/flexoki-nvim",
      name = "flexoki"
    },
    {
      "akinsho/horizon.nvim", version = "*",
      config = function ()
        -- vim.cmd.colorscheme "horizon"
      end
    },
    {
      'cocopon/iceberg.vim'
    },
    {
      "bluz71/vim-moonfly-colors",
      name = "moonfly",
      lazy = false,
      priority = 1000,
      config = function ()
        -- vim.cmd.colorscheme("moonfly")
      end
    },
    {
      "diegoulloao/neofusion.nvim",
      priority = 1000,
      config = function ()
        -- vim.cmd([[ colorscheme neofusion ]])
      end,
      opts = {}
    },
    {
      'KabbAmine/yowish.vim'
    },

  }
else 
  return {}
end

