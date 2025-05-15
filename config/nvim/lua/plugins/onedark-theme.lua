return {
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  enabled = false,
  config = function()
    require('onedark').setup {
      -- style = 'dark'
      -- style = 'darker'
      -- style = 'cool'
      -- style = 'deep'
      -- style = 'warm'
      style = 'warmer'
    }
    -- Enable theme
    require('onedark').load()
  end
}
