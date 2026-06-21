local mainMod = HOST_VARS.mainMod
local terminal = HOST_VARS.terminal
local fileManager = HOST_VARS.fileManager
local menu = HOST_VARS.menu

-- Example binds, see https://wiki.hypr.land/Configuring/Binds/ for more
-- hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + Q", hl.dsp.window.close())
-- hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("exit"))  -- exit
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd(menu))
-- hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())  -- dwindle
-- hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))  -- dwindle
-- hl.bind(mainMod .. " + F", hl.dsp.window.float({ action = "toggle" }))
-- hl.bind(mainMod .. " + F", hl.dsp.window.tag("semi-fullscreen"))
-- screenshot
hl.bind(
	mainMod .. " + P",
	hl.dsp.exec_cmd(
		'grim -g "$(slurp)" - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | dunstify "Screenshot of the region taken" -t 1000'
	)
)
hl.bind(
	mainMod .. " + SHIFT + P",
	hl.dsp.exec_cmd(
		'grim - | wl-copy && wl-paste > ~/Pictures/Screenshots/Screenshot-$(date +%F_%T).png | dunstify "Screenshot of whole screen taken" -t 1000'
	)
)

hl.bind(mainMod .. " + space", hl.dsp.exec_cmd("ulauncher-toggle"))

-- Move focus with mainMod + arrow keys
hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "d" }))

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + Y", hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + " .. HOST_VARS.workspaceMoveKey .. " + Y", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

for i, key in ipairs(HOST_VARS.workspaceSwitchKeys) do
	-- numpad row: switch workspace / move window to workspace
	hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
	hl.bind(mainMod .. " + " .. HOST_VARS.workspaceMoveKey .. " + " .. key, hl.dsp.window.move({ workspace = i }))
end
