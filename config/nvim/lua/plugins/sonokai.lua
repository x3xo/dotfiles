return {
  "sainnhe/sonokai",
  enabled = true,
  config = function()
    -- both of these options have to be set in order to disable italics
   vim.g.sonokai_style = 'andromeda'
    vim.g.sonokai_enable_italic = false
    vim.g.sonokai_disable_italic_comment = true

    vim.cmd.colorscheme('sonokai')
  end
}

