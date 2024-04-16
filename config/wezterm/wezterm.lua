local wezterm = require 'wezterm'
local config = {}

-- config.color_scheme = 'Batman'
-- config.color_scheme = 'Ayu Dark (Gogh)'
config.color_scheme = 'Ayu Mirage (Gogh)'
-- config.color_scheme = 'Oceanic Next (Gogh)'
-- config.color_scheme = 'Azu (Gogh)'

config.font_size = 16.0
config.line_height = 1.2
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' } -- disable ligatures
config.cursor_thickness = "4px"
config.window_decorations = "RESIZE" -- remove title bar
config.use_fancy_tab_bar = false -- remove tab bar
config.hide_tab_bar_if_only_one_tab = true -- remove tab bar

config.send_composed_key_when_left_alt_is_pressed = false -- make option behave as alt
config.send_composed_key_when_right_alt_is_pressed = false -- make option behave as alt

config.window_padding = {
  left = 2,
  right = 2,
  top = 0,
  bottom = 0,
}

config.keys = {
  {
    key = 't',
    mods = 'CMD',
    action = wezterm.action{SendString="\x07\x63"}, -- new window (tab) in tmux
  },
  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action{SendString="\x1b\x77"}, -- close pane in tmux
  },
  {
    key = 'w',
    mods = 'CMD|SHIFT',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
  {
    key = 'f',
    mods = 'CMD',
    action = wezterm.action{SendString="\x1b\x2f"}, -- find in tmux
  },
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action{SendString="\x07\x7a"}, -- toggle zoom pane in tmux
  },
  {
    key = 'e',
    mods = 'CMD',
    action = wezterm.action{SendString="\x2c\x66\x62"}, -- show buffers in vim using telescope (vim mapping is <esc>,fb)
  },
  {
    key = 's',
    mods = 'CMD',
    action = wezterm.action{SendString="\x1b\x3a\x77\x0a"}, -- save in vim (esc :w<cr>)
  },
  {
    key = 'l',
    mods = 'CMD',
    action = wezterm.action{SendString="\x07\x6e"}, -- next tmux window
  },
  {
    key = 'n',
    mods = 'CMD',
    action = wezterm.action{SendString="\x07\x6e"}, -- next tmux window
  },
  {
    key = 'p',
    mods = 'CMD',
    action = wezterm.action{SendString="\x07\x70"}, -- prev tmux window
  },
  {
    key = 'Enter',
    mods = 'CMD',
    action = wezterm.action.ToggleFullScreen,
  },
}

return config
