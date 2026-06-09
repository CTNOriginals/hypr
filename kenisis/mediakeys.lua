hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl --player=spotify next"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl --player=spotify previous"), { locked = true })
hl.bind("XF86AudioRewind", hl.dsp.exec_cmd("playerctl --player=spotify position 5-"), { locked = true, repeating = true })
hl.bind("XF86AudioForward", hl.dsp.exec_cmd("playerctl --player=spotify position 5+"), { locked = true, repeating = true })
