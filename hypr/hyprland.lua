require("autostart")
require("bindings")
require("bindings/media")
-- require("bindings/clipboard")
require("bindings/tiling-v2")
require("bindings/utilities")
require("bindings/screencapture")
require("input")
require("windows")

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

require(monitors)
require(workspace)

hl.config({
  misc = {
    disable_splash_rendering = true
  }
})
