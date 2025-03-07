local wezterm = require("wezterm")

local config = wezterm.config_builder()
--
-- config.color_scheme = "Catppuccin Macchiato"
config.color_scheme = "Catppuccin Mocha"
config.font_size = 12
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.85
config.enable_wayland = false

return config
