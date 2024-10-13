local wezterm = require "wezterm"

return {
	font = wezterm.font "JetBrains Mono",
	harfbuzz_features = {
		"calt=0",
		"clig=0",
		"liga=0",
	},
}
