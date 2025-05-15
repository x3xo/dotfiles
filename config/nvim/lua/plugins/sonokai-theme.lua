return {
  "sainnhe/sonokai",
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    -- both of these options have to be set in order to disable italics
    vim.g.sonokai_style = 'andromeda'
    vim.g.sonokai_enable_italic = false
    vim.g.sonokai_disable_italic_comment = true
    -- vim.g.sonokai_transparent_background = 1

    -- vim.cmd.colorscheme('sonokai')
  end
}

