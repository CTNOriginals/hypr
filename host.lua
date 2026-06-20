local f = io.open("/proc/sys/kernel/hostname", "r")
local hostname = f:read("*l")
f:close()
_G.HOST = hostname

local ok = pcall(require, "hosts.default")
if not ok then
	hl.notification.create({
		text = "FATAL: hosts/default.lua missing",
		timeout = 10000,
		color = "rgba(ff0000ff)",
	})
	error("Missing hosts/default.lua")
end

pcall(require, "hosts." .. hostname)
print("Host config loaded for '" .. hostname .. "'")
