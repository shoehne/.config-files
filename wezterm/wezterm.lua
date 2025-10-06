local wezterm = require 'wezterm'
local keymaps = require('keymap')
local windows_config = require('windows')
local linux_config = require('linux')

local config = {}
local act = wezterm.action

config.initial_cols = 120
config.initial_rows = 28

config.color_scheme_dirs =  { wezterm.config_file .. '/colors' }
config.font = wezterm.font('Fira Code', {

	weight = 'Regular',
	italic = false
})
config.window_decorations = "RESIZE"
config.bypass_mouse_reporting_modifiers = ''

config.inactive_pane_hsb = {

    brightness = 0.5
}

config.color_scheme = 'Cyberpurple'

keymaps.keymaps(config)

if package.config:sub(1, 1) == '\\' then
    windows_config.windows_config (config)
else
    linux_config.linux_config (config)
end

return config
