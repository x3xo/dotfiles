return {
  'junegunn/seoul256.vim',
  enabled = false,
  config = function ()
    vim.cmd([[
    " seoul256 (dark):
    "   Range:   233 (darkest) ~ 239 (lightest)
    "   Default: 237
    " let g:seoul256_background = 236

    " let g:seoul256_background = 237
    let g:seoul256_background = 235
    colorscheme seoul256
    ]])
  end
}
