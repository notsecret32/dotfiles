local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Appearance
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

-- Font
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 14
config.line_height = 1.2

-- Colors
config.colors = {
  cursor_bg = "white",
  cursor_border = "white",
}

-- WSL
--config.default_domain = "WSL:archlinux"

return config
