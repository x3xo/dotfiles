local wezterm = require 'wezterm'
local config = {}

-- config.color_scheme = 'Batman'
-- config.color_scheme = 'Ayu Dark (Gogh)'
-- config.color_scheme = 'Ayu Mirage (Gogh)'
config.color_scheme = 'Oceanic Next (Gogh)'
-- config.color_scheme = 'Azu (Gogh)'
-- config.color_scheme = 'Oxocarbon Dark (Gogh)'
-- config.color_scheme = 'Dark Pastel (Gogh)'
-- config.color_scheme = 'Panda (Gogh)'
-- config.color_scheme = 'Rosé Pine (base16)'
-- config.color_scheme = 'Royal (Gogh)'
-- config.color_scheme = 'Rydgel (terminal.sexy)'
-- config.color_scheme = 'Tokyo Night (Gogh)'

config.colors = {
  cursor_bg = '#52ad70',
  -- Overrides the text color when the current cell is occupied by the cursor
  cursor_fg = 'black',
  -- Specifies the border color of the cursor when the cursor style is set to Block,
  -- or the color of the vertical or horizontal bar when the cursor style is set to
  -- Bar or Underline.
  cursor_border = '#52ad70',
}

-- config.font = wezterm.font('Zed Mono Extended', { weight = 'Regular', italic = false })
-- config.font = wezterm.font('Zed Mono Extended')
-- config.font = wezterm.font('Iosevka Fixed Extended')

config.font_size = 14.0
config.line_height = 1.2
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' } -- disable ligatures
config.cursor_thickness = "3px"
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

config.disable_default_key_bindings = true

config.keys = {
  {
    key = 'q',
    mods = 'CMD|OPT',
    action = wezterm.action.QuitApplication,
  },
  {
    key = 'q',
    mods = 'CMD',
    action = wezterm.action.HideApplication,
  },
  {
    key = 'h',
    mods = 'CMD',
    action = wezterm.action.HideApplication,
  },
  {
    key = '=',
    mods = 'CMD',
    action = wezterm.action.IncreaseFontSize,
  },
  {
    key = '-',
    mods = 'CMD',
    action = wezterm.action.DecreaseFontSize,
  },
  {
    key = '0',
    mods = 'CMD',
    action = wezterm.action.ResetFontSize,
  },
  {
    key = 'c',
    mods = 'CMD',
    action = wezterm.action.CopyTo "Clipboard",
  },
  {
    key = 'v',
    mods = 'CMD',
    action = wezterm.action.PasteFrom "Clipboard",
  },
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
