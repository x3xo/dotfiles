return {
  "loctvl842/monokai-pro.nvim",
  config = function()
    require("monokai-pro").setup()
    vim.cmd('colorscheme monokai-pro-default')
    vim.cmd('hi CursorLineNr guifg=#ffd866 guibg=#373438')
    vim.cmd('hi TelescopePreviewLine guifg=#ffd866 guibg=#373438')
  end
}
