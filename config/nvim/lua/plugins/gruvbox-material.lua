return {
  'sainnhe/gruvbox-material',
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    -- Optionally configure and load the colorscheme
    -- directly inside the plugin declaration.
    vim.g.gruvbox_material_enable_italic = false
    vim.cmd.colorscheme('gruvbox-material')
  end
}
