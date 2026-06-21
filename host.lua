local f = io.open("/proc/sys/kernel/hostname", "r")
local hostname = f:read("*l")
f:close()
_G.HOST = hostname

local ok, defaultTable = pcall(require, "hosts.default")
if not ok then
	hl.notification.create({
		text = "FATAL: hosts/default.lua missing",
		timeout = 10000,
		color = "rgba(ff0000ff)",
	})
	error("Missing hosts/default.lua")
end
---@type HostVars
HOST_VARS = defaultTable

local ok2, override = pcall(require, "hosts." .. hostname)
if type(override) == "table" then
	for k, v in pairs(override) do
		HOST_VARS[k] = v
	end
end

hl.notification.create({
	text = "Host configs loaded for: " .. hostname,
	timeout = 2500,
	color = "rgba(00ffaaee)",
})
