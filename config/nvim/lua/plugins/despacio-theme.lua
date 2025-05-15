return {
  'AlessandroYorba/Despacio',
  lazy = false,
  enabled = false,
  config = function()
    -- vim.cmd.colorscheme "despacio"
    vim.cmd([[
    "let g:despacio_Sunset = 1
    let g:despacio_Twilight = 1
    " let g:despacio_Midnight = 1
    " let g:despacio_Pitch = 1

    colorscheme despacio
    hi Visual guifg=#5f8787
    ]])
  end,
}
