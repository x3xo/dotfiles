return {
  "loctvl842/monokai-pro.nvim",
  enabled = false,
  config = function()
    require("monokai-pro").setup( {
      styles = {
        comment = { italic = false },
        keyword = { italic = false }, -- any other keyword
        type = { italic = false }, -- (preferred) int, long, char, etc
        storageclass = { italic = false }, -- static, register, volatile, etc
        structure = { italic = false }, -- struct, union, enum, etc
        parameter = { italic = false }, -- parameter pass in function
        annotation = { italic = false },
        tag_attribute = { italic = false }, -- attribute of tag in reactjs
      },
    })
    -- vim.cmd('colorscheme monokai-pro-default')
    vim.cmd('colorscheme monokai-pro-octagon')
    -- vim.cmd('hi CursorLineNr guifg=#ffd866 guibg=#373438')
    -- vim.cmd('hi TelescopePreviewLine guifg=#ffd866 guibg=#373438')
  end
}
