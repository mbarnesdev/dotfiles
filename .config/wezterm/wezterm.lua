require("math")

local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

local color_scheme = "Batman"
local font_size = 12

config.color_scheme = color_scheme
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.font_size = font_size
config.use_fancy_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
