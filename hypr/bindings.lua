# Application bindings
local terminal = "wezterm"
local browser = "zen-browser"
local wezterm_config = "~/.config/wezterm/wezterm.lua"

local main_mod = "SUPER"
hl.bind(main_mod .. " + RETURN",
  hl.dsp.exec_cmd(terminal .. " --config-file " .. wezterm_config),
  {
    -- release = true,
    description = "Terminal",
  }
)
hl.bind(main_mod .. " + SHIFT + F",
  hl.dsp.exec_cmd("dolphin"),
  {
    -- release = true,
    description = "Dolphin file manager"
  })
hl.bind(main_mod .. " + SHIFT + B",
  hl.dsp.exec_cmd(browser),
  {
    -- release = true,
    description = "Zen browser"
  })

hl.bind(main_mod .. " + Escape",
  hl.dsp.exec_cmd("nwg-bar"),
  {
    -- release = true,
    description = "Shutdown options"
  })
hl.bind(main_mod .. " + SHIFT + L",
  hl.dsp.exec_cmd("hyprlock"),
  {
    description = "Lock screen"
  })
