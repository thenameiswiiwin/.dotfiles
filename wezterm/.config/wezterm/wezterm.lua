local wezterm = require 'wezterm'

return {
  color_scheme = 'Catppuccin Mocha',
  font = wezterm.font 'VictorMono Nerd Font',
  font_size = 16.0,
  adjust_window_size_when_changing_font_size = false,
  window_background_opacity = 1.0,
  macos_window_background_blur = 30,
  window_decorations = 'RESIZE',
  enable_tab_bar = false,
  keys = {
    {
      key = 'q',
      mods = 'CTRL',
      action = wezterm.action.ToggleFullScreen,
    },
    {
      key = "'",
      mods = 'CTRL',
      action = wezterm.action.ClearScrollback 'ScrollbackAndViewport',
    },
  },
  mouse_bindings = {
    -- Ctrl-click will open the link under the mouse cursor
    {
      event = { Up = { streak = 1, button = 'Left' } },
      mods = 'CTRL',
      action = wezterm.action.OpenLinkAtMouseCursor,
    },
  },
}
