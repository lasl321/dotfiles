local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

-- Wezterm custom TERM value
config.term = "wezterm"

-- Font items
-- Monaspace:  https://monaspace.githubnext.com/
-- Based upon, contributed to:  https://gist.github.com/ErebusBat/9744f25f3735c1e0491f6ef7f3a9ddc3
config.font = wezterm.font({ -- Normal text
	family = "Monaspace Neon",
	harfbuzz_features = {
		"calt",
		"liga",
		"dlig",
		"ss01",
		"ss02",
		"ss03",
		"ss04",
		"ss05",
		"ss06",
		"ss07",
		"ss08",
		"ss09",
		"ss10",
		"cv01=2",
		"cv10",
		"cv32",
	},
	-- stretch = "UltraCondensed", -- This doesn't seem to do anything
})

config.font_rules = {
	{ -- Italic
		intensity = "Normal",
		italic = true,
		font = wezterm.font({
			family = "Monaspace Radon", -- script style
			-- family = "Monaspace Xenon", -- courier-like
			style = "Italic",
		}),
	},
	--
	-- 	{ -- Bold
	-- 		intensity = "Bold",
	-- 		italic = false,
	-- 		font = wezterm.font({
	-- 			family = "Monaspace Krypton",
	-- 			-- weight='ExtraBold',
	-- 			weight = "Bold",
	-- 		}),
	-- 	},
	--
	{ -- Bold Italic
		intensity = "Bold",
		italic = true,
		font = wezterm.font({
			family = "Monaspace Radon",
			style = "Italic",
			weight = "Bold",
		}),
	},
}

-- config.font = wezterm.font({
-- family = "JetBrainsMono Nerd Font",
-- 	harfbuzz_features = { "zero", "calt=1", "clig=1", "liga=1" },
-- })
config.font_size = 14
config.warn_about_missing_glyphs = true
-- config.freetype_load_target = "HorizontalLcd" -- https://wezfurlong.org/wezterm/config/lua/config/freetype_load_target.html

-- Do not show window tab bar
config.enable_tab_bar = false

config.window_decorations = "RESIZE"

-- Set up transparency
config.window_background_opacity = 0.85
config.macos_window_background_blur = 0

-- Use iTerm2 color scheme
-- config.color_scheme = "iTerm2 Default"
config.color_scheme = "Tokyo Night (Gogh)"

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
