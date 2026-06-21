local function get_hostname()
    local f = io.popen ("/bin/hostname")
    local hostname = f:read("*a") or ""
    f:close()
    hostname =string.gsub(hostname, "\n$", "")
    return hostname
end
local hostname = get_hostname()

hl.on("hyprland.start", function()
  hl.exec_cmd("systemctl --user start hyprpolkitagent")
  hl.exec_cmd("systemctl --user start elephant.service")
  hl.exec_cmd("hypridle")
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar -c ~/.config/waybar/" .. hostname ..".config.jsonc")
  hl.exec_cmd("walker --gapplicationservice")
  hl.exec_cmd("/opt/piavpn/bin/pia-client")
  hl.exec_cmd("ssh-agent -D -a /run/user/1000/ssh-agent.socket")
  hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
  end)
