return {
  'sam4llis/nvim-tundra',
  enabled = false,
  config = function ()
    require('nvim-tundra').setup({
      transparent_background = false,
      dim_inactive_windows = {
        enabled = false,
        color = nil,
      },
      sidebars = {
        enabled = false,
        color = nil,
      },
      editor = {
        search = {},
        substitute = {},
      },
      syntax = {
        booleans = { bold = true, italic = false },
        comments = { bold = true, italic = false },
        conditionals = {},
        constants = { bold = true },
        fields = {},
        functions = {},
        keywords = {},
        loops = {},
        numbers = { bold = true },
        operators = { bold = true },
        punctuation = {},
        strings = {},
        types = { italic = false },
      },
      diagnostics = {
        errors = {},
        warnings = {},
        information = {},
        hints = {},
      },
      plugins = {
        lsp = true,
        semantic_tokens = true,
        treesitter = true,
        telescope = true,
        nvimtree = true,
        cmp = true,
        context = true,
        dbui = true,
        gitsigns = true,
        neogit = true,
        textfsm = true,
      },
      overwrite = {
        colors = {},
        highlights = {},
      },
    })

    vim.g.tundra_biome = 'arctic' -- 'arctic' or 'jungle'
    vim.opt.background = 'dark'
    vim.cmd('colorscheme tundra')
  end,
}
