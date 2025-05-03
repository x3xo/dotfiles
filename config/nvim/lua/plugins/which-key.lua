return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- false | "classic" | "modern" | "helix"
    preset = "classic",
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
