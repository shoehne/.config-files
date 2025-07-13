local wezterm = require('wezterm')

local module = {}

function module.windows_config (config)

    config.font_size = 14
    config.default_prog = {os.getenv('LOCALAPPDATA') .. '\\Programs\\nu\\bin\\nu.exe' }

end

return module
