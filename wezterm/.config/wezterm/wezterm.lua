local wezterm = require 'wezterm'

return {
  color_scheme = "Catppuccin Mocha",
  hide_tab_bar_if_only_one_tab = true,
  window_background_opacity = 1.0,
  enable_wayland = false,

  font = wezterm.font_with_fallback {
    'JetBrainsMono Nerd Font',
    'MesloLGSDZ Nerd Font Mono',
    'Symbols Nerd Font Mono',
    -- Add CJK and emoji support
    'Noto Sans CJK JP',
    'Noto Sans CJK SC', -- Simplified Chinese
    'Noto Sans CJK TC', -- Traditional Chinese
    'Noto Sans CJK KR', -- Korean
    'Noto Color Emoji',
    'DejaVu Sans Mono', -- Additional fallback
  },

  font_size = 12.0,
}
