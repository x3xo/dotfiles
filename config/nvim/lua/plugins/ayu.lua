return {
  'Shatur/neovim-ayu',
  name = 'neovim-ayu',
  enabled = false,
  config = function()
    require('ayu').setup({
      mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
      overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
    })
    -- vim.cmd('colorscheme ayu-mirage')
    vim.cmd('colorscheme ayu')
    vim.cmd([[
      " hi StatusLine guibg=#1b2733
      " hi StatusLineNC guibg=#1b2733 guifg=#3e4b59

      hi CursorLine guibg=#191e2a
      hi CursorLineNr guibg=#191e2a guifg=#e6b450
      hi IncSearch gui=reverse
      hi Visual guibg=#475258 guifg=#ccc

      hi DiagnosticWarn guibg=#1b2733
      hi DiagnosticError guibg=#1b2733
      hi DiagnosticInfo guibg=#1b2733
    ]])
  end
}
