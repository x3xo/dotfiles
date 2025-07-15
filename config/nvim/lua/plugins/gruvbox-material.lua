return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_enable_italic = false


    vim.cmd([[
      " warmer
      " let g:gruvbox_material_colors_override = {'bg0': ['#1d1f21', '234'], 'bg2': ['#282828', '235']}

      " cooler
      let g:gruvbox_material_colors_override = {'bg0': ['#151b23', '234'], 'bg2': ['#282828', '235']}
      colorscheme gruvbox-material
      hi TelescopeSelection guifg=none guibg=#32302f
    ]])

  end
}
