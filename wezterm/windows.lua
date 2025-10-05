local wezterm = require('wezterm')

local module = {}

function module.windows_config (config)

    config.font_size = 14
    config.default_prog = {os.getenv('LOCALAPPDATA') .. '\\Programs\\nu\\bin\\nu.exe' }
    config.background = {
        {
            source = {
                File = os.getenv('XDG_CONFIG_HOME') .. '/background_images/cyberpunk_bike.jpg'
            },
            hsb = {
                brightness = 0.03
            },
        },
    }
end

return module
