return {
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  enabled = true,
  config = function()
    require('onedark').setup {
      transparent = false,
      -- style = 'dark' -- the default
      -- style = 'darker'
      -- style = 'cool'
      -- style = 'deep',
      -- style = 'warm'
      style = 'warmer'

      -- colors = {
        -- bright_orange = "#ff8800",    -- define a new color

        -- bg1 = '#1a2337',            -- cusorline
        -- bg2 = '#1a2337',            -- statusline
        -- bg0 = "#1a2337",

        -- black = "#181a1f",
        -- bg0 = "#282c34",
        -- bg1 = "#31353f",
        -- bg2 = "#393f4a",
        -- bg3 = "#3b3f4c",
        -- bg_d = "#21252b",
        -- bg_blue = "#73b8f1",
        -- bg_yellow = "#ebd09c",
        -- fg = "#abb2bf",
        -- purple = "#c678dd",
        -- green = "#98c379",
        -- orange = "#d19a66",
        -- blue = "#61afef",
        -- yellow = "#e5c07b",
        -- cyan = "#56b6c2",
        -- red = "#e86671",
        -- grey = "#5c6370",
        -- light_grey = "#848b98",
        -- dark_cyan = "#2b6f77",
        -- dark_red = "#993939",
        -- dark_yellow = "#93691d",
        -- dark_purple = "#8a3fa0",
        -- diff_add = "#31392b",
        -- diff_delete = "#382b2c",
        -- diff_change = "#1c3448",
        -- diff_text = "#2c5372",
      -- },

    }
    -- Enable theme
    require('onedark').load()

    vim.cmd([[
    "hi CursorLine guibg=#1a2337
    "hi StatusLine guibg=#1a2337
    ]])
  end
}
