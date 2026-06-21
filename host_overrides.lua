local hostname = _G.HOST
if not hostname then
	return
end

local ok = pcall(require, "hosts." .. hostname .. "_override")
if ok then
	print("Host overrides loaded for '" .. hostname .. "'")
	hl.notification.create({
		text = "Host overrides loaded for: " .. hostname,
		timeout = 2500,
		color = "rgba(00ffaaee)",
	})
else
	local ok2, err2 = pcall(require, "hosts." .. hostname)
	if ok2 then
		print("Host overrides loaded from base file for '" .. hostname .. "'")
		hl.notification.create({
			text = "Host BASE overrides loaded for: " .. hostname,
			timeout = 2500,
			color = "rgba(00ffaaee)",
		})
	end
end
