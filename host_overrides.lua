local hostname = _G.HOST
if not hostname then return end

local ok = pcall(require, "hosts." .. hostname .. "_override")
if ok then
	print("Host overrides loaded for '" .. hostname .. "'")
else
	local ok2, err2 = pcall(require, "hosts." .. hostname)
	if ok2 then
		print("Host overrides loaded from base file for '" .. hostname .. "'")
	end
end
