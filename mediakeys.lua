hl.on("hyprland.start", function()
	local t
	t = hl.timer(function()
		local sink = io.popen("wpctl status | awk '/Streams:/{s=1} s && /audio-src/{print $1; exit}'"):read("*l")
		if sink then
			local cmd = "wpctl set-volume " .. sink
			hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd(cmd .. " 5%+"), { locked = true, repeating = true })
			hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd(cmd .. " 5%-"), { locked = true, repeating = true })
			t:set_enabled(false)
		end
	end, { timeout = 5000, type = "repeat" })
end)

hl.bind(
	"XF86AudioRaiseVolume",
	hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 0.02+"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioLowerVolume",
	hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.02-"),
	{ locked = true, repeating = true }
)

hl.bind(
	"XF86AudioMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),
	{ locked = true, repeating = true }
)
hl.bind(
	"XF86AudioMicMute",
	hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),
	{ locked = true, repeating = true }
)

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl --player=spotify play-pause"), { locked = true })
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("playerctl --player=spotify play-pause"), { locked = true })

-- hl.bind("CTRL + XF86AudioStop", hl.dsp.exec_cmd("playerctl --player=spotify play-pause"), { locked = true })

hl.bind("CTRL + SHIFT + XF86AudioRaiseVolume", hl.dsp.exec_cmd("playerctl --player=spotify next"), { locked = true })
hl.bind(
	"CTRL + SHIFT + XF86AudioLowerVolume",
	hl.dsp.exec_cmd("playerctl --player=spotify previous"),
	{ locked = true }
)

hl.bind(
	"CTRL + XF86AudioPlay",
	hl.dsp.exec_cmd("playerctl --player=spotify position 5-"),
	{ locked = true, repeating = true }
)
hl.bind(
	"CTRL + XF86AudioMute",
	hl.dsp.exec_cmd("playerctl --player=spotify position 5+"),
	{ locked = true, repeating = true }
)

-- hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
-- hl.bind("XF86HomePage", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.05-"), { locked = true, repeating = true })
-- hl.bind("XF86Mail", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.05+"), { locked = true, repeating = true })
-- hl.bind("CTRL + XF86HomePage", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.1-"), { locked = true, repeating = true })
-- hl.bind("CTRL + XF86Mail", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.1+"), { locked = true, repeating = true })
-- hl.bind("SHIFT + XF86HomePage", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.2-"), { locked = true, repeating = true })
-- hl.bind("SHIFT + XF86Mail", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.2+"), { locked = true, repeating = true })
