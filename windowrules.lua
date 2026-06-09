hl.window_rule({
	name = "ulauncher",
	match = { class = "ulauncher" },
	opacity = 0.9,
	stay_focused = true,
	border_size = 0,
})
hl.exec_cmd("ulauncher")

hl.window_rule({
	name = "browser",
	match = { class = "zen" },
	workspace = 4,
})
hl.exec_cmd("zen-browser")

hl.window_rule({
	name = "discord",
	match = { class = "vesktop" },
	workspace = 5,
})
hl.exec_cmd("vesktop")

hl.window_rule({
	name = "spotify",
	match = { class = "Spotify" },
	workspace = 6,
})
hl.exec_cmd("spotify-launcher")
