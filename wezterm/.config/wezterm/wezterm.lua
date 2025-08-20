local wezterm = require 'wezterm'

return {
  color_scheme = "Catppuccin Mocha",
  hide_tab_bar_if_only_one_tab = true,
  window_background_opacity = 0.85,
  enable_wayland = false,

  font = wezterm.font_with_fallback {
    'JetBrainsMono Nerd Font',
    'MesloLGSDZ Nerd Font Mono',
    'Symbols Nerd Font Mono',
  },

  font_size = 12.0,
}
