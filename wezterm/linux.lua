local wezterm = require('wezterm')

local module = {}

function module.linux_config(config)

    config.enable_wayland = false
    config.size = 10
end


return module
