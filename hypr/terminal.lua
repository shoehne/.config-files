local wezterm = require'wezterm'
local config = {}

config.enable_wayland = false
config.enable_tab_bar = false
config.window_close_confirmation = 'NeverPrompt'
config.exit_behavior = 'Close'

return config
