---@class HostVarsOverride
---@field mainMod? string
---@field terminal? string
---@field fileManager? string
---@field menu? string
---@field monPrimary? string
---@field monSecondary? string
---@field workspaceSwitchKeys? string[]
---@field workspaceMoveKey? string

---@class HostVars
---@field mainMod string
---@field terminal string
---@field fileManager string
---@field menu string
---@field monPrimary string
---@field monSecondary string?
---@field workspaceSwitchKeys string[]
---@field workspaceMoveKey string
HOST_VARS = {
	mainMod = "SUPER",
	terminal = "alacritty",
	fileManager = "dolphin",
	menu = "hyprlauncher",
	monPrimary = "DP-1",
	monSecondary = "DVI-I-1",

	workspaceSwitchKeys = {
		"KP_End",
		"KP_Down",
		"KP_Next",
		"KP_Left",
		"KP_Begin",
		"KP_Right",
		"KP_Home",
		"KP_Up",
		"KP_Prior",
		"KP_Insert",
	},
	workspaceMoveKey = "CTRL",
}

return HOST_VARS
