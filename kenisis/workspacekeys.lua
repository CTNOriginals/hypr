local mainMod = "SUPER"
local terminal = "alacritty"
local fileManager = "dolphin"
local menu = "wofi --show drun"

hl.bind(mainMod .. " + M", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + comma", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + period", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + U", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + I", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + O", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + bracketleft", hl.dsp.focus({ workspace = 10 }))

hl.bind(mainMod .. " + CTRL + M", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + CTRL + comma", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + CTRL + period", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + CTRL + J", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + CTRL + K", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + CTRL + U", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + CTRL + I", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + CTRL + O", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + CTRL + bracketleft", hl.dsp.window.move({ workspace = 10 }))
