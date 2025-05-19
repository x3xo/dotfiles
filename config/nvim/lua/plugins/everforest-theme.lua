return {
  'sainnhe/everforest',
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.everforest_enable_italic = false

    -- vim.cmd([[
      -- let g:everforest_colors_override = {'bg0': ['#2e383c', '234']}
    -- ]])


    vim.g.everforest_background = 'medium'
    -- vim.g.everforest_background = 'hard'
    -- vim.g.everforest_background = 'soft'
    -- vim.g.everforest_transparent_background = 1
    vim.cmd.colorscheme('everforest')



  end
}
