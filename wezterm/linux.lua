local wezterm = require('wezterm')

local module = {}

function module.linux_config(config)

  config.default_prog = { '/usr/bin/nu' }
  config.enable_wayland = false
  config.font_size = 14
  config.window_background_opacity = 0.70
end

return module
