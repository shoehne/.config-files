-- exec-once = echo "\$host_name = $(hostname)" > ~/.config/hypr/current-hostname.conf
-- source = ~/.config/hypr/current-hostname.conf
-- source = ~/.config/hypr/autostart.conf
-- source = ~/.config/hypr/bindings.conf
-- source = ~/.config/hypr/bindings/media.conf
-- source = ~/.config/hypr/bindings/clipboard.conf
-- source = ~/.config/hypr/bindings/tiling-v2.conf
-- source = ~/.config/hypr/bindings/utilities.conf
-- source = ~/.config/hypr/bindings/screencapture.conf
-- # source = ~/.config/hypr/envs.conf
-- # source = ~/.config/hypr/looknfeel.conf
-- source = ~/.config/hypr/input.conf
-- source = ~/.config/hypr/windows.conf
--
-- # Device specific configs, i.e. laptop and desktop
-- source = ~/.config/hypr/$host_name.workspaces.conf
-- source = ~/.config/hypr/$host_name.monitors.conf
require("autostart")
require("bindings")
require("bindings/media")
-- require("bindings/clipboard")
require("bindings/tiling-v2")
require("bindings/utilities")
-- require("bindings/screencapture")
require("input")
-- require("windows")

local function get_hostname()
    local f = io.popen ("/bin/hostname")
    local hostname = f:read("*a") or ""
    f:close()
    hostname =string.gsub(hostname, "\n$", "")
    return hostname
end

local hostname = get_hostname()

local workspace = hostname .. "-workspaces"
local monitors = hostname .. "-monitors"

require(workspace)
require(monitors)
