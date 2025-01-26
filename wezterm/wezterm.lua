local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

-- Wezterm custom TERM value
config.term = "wezterm"

-- Font items
config.font = wezterm.font("MesloLGS NF")
config.font_size = 13

-- Do not show window tab bar
config.enable_tab_bar = false

config.window_decorations = "RESIZE"

-- Set up transparency
config.window_background_opacity = 0.85
config.macos_window_background_blur = 0

-- Use iTerm2 color scheme
config.color_scheme = "iTerm2 Default"

config.keys = {
	{
		key = "k",
		mods = "SUPER",
		action = act.Multiple({
			act.ClearScrollback("ScrollbackAndViewport"),
			act.SendKey({
				key = "L",
				mods = "CTRL",
			}),
		}),
	},
}

return config
