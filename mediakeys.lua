-- Get the wpctl music id:
-- 1. Get client ID from pactl list clients (paragraph mode -- find spotify -- extract Client #82 -- 82)
-- 2. Get sink-input & node ID from pactl list sink-inputs (find Client: 82 -- extract Sink Input #83 and object.id = "77")
-- $CLIENT_ID=$(pactl list clients | awk -v RS= '/application\.name = "spotify"/ {gsub("#","",$2); print $2; exit}')
local music_sink = io.popen("wpctl status | awk '/Streams:/{s=1} s && /audio-src/{print $1; exit}'"):read("*l")
local set_music_volume = music_sink and "wpctl set-volume " .. music_sink or nil
-- local set_music_volume = music_sink and "pactl set-sink-input-volume " .. music_sink or nil
local get_music_volume = music_sink and "wpctl get-volume " .. music_sink or nil

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 0.02+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.02-"), { locked = true, repeating = true })

-- hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.05+"), { locked = true, repeating = true })
-- hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.05-"), { locked = true, repeating = true })
if set_music_volume then
	hl.bind("CTRL + XF86AudioRaiseVolume", hl.dsp.exec_cmd(set_music_volume .. " 5%+"), { locked = true, repeating = true })
	hl.bind("CTRL + XF86AudioLowerVolume", hl.dsp.exec_cmd(set_music_volume .. " 5%-"), { locked = true, repeating = true })
end

hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true, repeating = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { locked = true, repeating = true })

hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl --player=spotify play-pause"), { locked = true })
hl.bind("XF86AudioStop", hl.dsp.exec_cmd("playerctl --player=spotify play-pause"), { locked = true })

-- hl.bind("CTRL + XF86AudioStop", hl.dsp.exec_cmd("playerctl --player=spotify play-pause"), { locked = true })

hl.bind("CTRL + SHIFT + XF86AudioRaiseVolume", hl.dsp.exec_cmd("playerctl --player=spotify next"), { locked = true })
hl.bind("CTRL + SHIFT + XF86AudioLowerVolume", hl.dsp.exec_cmd("playerctl --player=spotify previous"), { locked = true })

hl.bind("CTRL + XF86AudioPlay", hl.dsp.exec_cmd("playerctl --player=spotify position 5-"), { locked = true, repeating = true })
hl.bind("CTRL + XF86AudioMute", hl.dsp.exec_cmd("playerctl --player=spotify position 5+"), { locked = true, repeating = true })

-- hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { locked = true, repeating = true })
-- hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { locked = true, repeating = true })
-- hl.bind("XF86HomePage", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.05-"), { locked = true, repeating = true })
-- hl.bind("XF86Mail", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.05+"), { locked = true, repeating = true })
-- hl.bind("CTRL + XF86HomePage", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.1-"), { locked = true, repeating = true })
-- hl.bind("CTRL + XF86Mail", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.1+"), { locked = true, repeating = true })
-- hl.bind("SHIFT + XF86HomePage", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.2-"), { locked = true, repeating = true })
-- hl.bind("SHIFT + XF86Mail", hl.dsp.exec_cmd("playerctl --player=spotify volume 0.2+"), { locked = true, repeating = true })
