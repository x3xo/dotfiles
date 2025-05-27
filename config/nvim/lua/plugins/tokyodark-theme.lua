return {
  "tiagovla/tokyodark.nvim",
  lazy = false,
  priority = 1000, -- recommended if you use tairiki as your default theme
  enabled = false,
  opts = {
    -- custom options here
  },
  config = function(_, opts)
    require("tokyodark").setup(opts) -- calling setup is optional
    vim.cmd [[colorscheme tokyodark]]
    vim.cmd([[
      " hi BufferCurrent guibg=#373354
      " hi BufferCurrentSign guibg=#373354
      " hi BufferCurrentMod guibg=#373354
"guifg=#11121d guibg=#98c379

      hi link BufferCurrent DiffText
      hi link BufferCurrentSign DiffText
      hi link BufferCurrentMod DiffText
      
      hi BufferCurrent guifg=#a0a8cd guibg=#0e293f
      hi BufferCurrentSign guifg=#a0a8cd guibg=#0e293f
      hi BufferCurrentMod guifg=#a0a8cd guibg=#0e293f
      
    ]])

  end,
}
