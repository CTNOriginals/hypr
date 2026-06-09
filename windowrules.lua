hl.window_rule({
	name = "ulauncher",
	match = { class = "ulauncher" },
	opacity = 0.9,
	stay_focused = true,
	border_size = 0,
})

hl.window_rule({
	name = "browser",
	match = { class = "zen" },
	workspace = 4,
})

hl.window_rule({
	name = "discord",
	match = { class = "vesktop" },
	workspace = 5,
})

hl.window_rule({
	name = "spotify",
	match = { class = "Spotify" },
	workspace = 6,
})

hl.on("hyprland.start", function()
	hl.exec_cmd("ulauncher")
	hl.exec_cmd("zen-browser")
	hl.exec_cmd("vesktop")
	hl.exec_cmd("spotify-launcher")
end)
