hl.monitor({ output = "eDP-1", mode = "preferred", position = "0x0", scale = "auto" })

hl.config({
	input = {
		touchpad = {
			natural_scroll = true,
			tap_to_click = true,
		},
	},
})

hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl set 5%+"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl set 5%-"), { locked = true, repeating = true })
