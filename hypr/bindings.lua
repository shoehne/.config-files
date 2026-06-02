# Application bindings
local terminal = "wezterm"
local browser = "zen-browser"
local wezterm_config = "~/.config/wezterm/wezterm.lua"
-- $terminal = wezterm
-- $browser = zen-browser
-- $wezterm_config = ~/.config/wezterm/wezterm.lua

-- bindd = SUPER, RETURN, Terminal, exec, $terminal --dir="$(omarchy-cmd-terminal-cwd)"
-- bindd = SUPER, RETURN, Terminal, exec, wezterm --config-file $wezterm_config
-- bindd = SUPER SHIFT, F, File manager, exec, dolphin
-- bindd = SUPER SHIFT, B, Browser, exec, $browser
-- bindd = SUPER, L, Lock Screen, exec, hyprlock
-- bindd = SUPER, Escape, Shutdown Options, exec, nwg-bar

local main_mod = "SUPER"
hl.bind(main_mod .. " + RETURN",
  hl.dsp.exec_cmd(terminal .. " --config-file " .. wezterm_config),
  {
    release = true,
    description = "Terminal",
  }
)
hl.bind(main_mod .. " + SHIFT + F",
  hl.dsp.exec_cmd("dolphin"),
  {
    release = true,
    description = "Dolphin file manager"
  })
hl.bind(main_mod .. " + SHIFT + B",
  hl.dsp.exec_cmd(browser),
  {
    release = true,
    description = "Zen browser"
  })

hl.bind(main_mod .. " + Escape",
  hl.dsp.exec_cmd("nwg-bar"),
  {
    release = true,
    description = "Shutdown options"
  })
