local wezterm = require "wezterm"

return {
	font = wezterm.font "Iosevka",
	font_size = 18,
	harfbuzz_features = {
		"calt=0",
		"clig=0",
		"liga=0",
	},
}
