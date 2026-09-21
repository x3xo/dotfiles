return {
  "ilof2/posterpole.nvim",
  priority=1000,
  enabled = false,
  config = function ()
    local posterpole = require("posterpole")

    posterpole.setup({
      -- config here
    })
    vim.cmd("colorscheme posterpole")
  end
}
