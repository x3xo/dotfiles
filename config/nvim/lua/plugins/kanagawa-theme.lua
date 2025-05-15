return {
  'rebelot/kanagawa.nvim',
  lazy = false,
  priority = 1000,
  enabled = false,
  config = function()
    require('kanagawa').setup({
      compile = false,             -- enable compiling the colorscheme
      undercurl = false,            -- enable undercurls
      commentStyle = { italic = false },
      functionStyle = {},
      keywordStyle = { italic = false},
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false,         -- do not set background color
      dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
      terminalColors = false,       -- define vim.g.terminal_color_{0,17}
      colors = {                   -- add/modify theme and palette colors
      palette = {},
      theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
      return {
        LineNr = { bg="none" },
        SignColumn = { bg="none" },
        WinSeparator = { bg="#16161d", fg="#16161d" },
      }
    end,
    theme = "wave",              -- Load "wave" theme when 'background' option is not set
    background = {               -- map the value of 'background' option to a theme
      dark = "wave",           -- try "dragon" !
      light = "lotus"
    },
  })
    -- vim.cmd('colorscheme kanagawa')
  end
}
