local wezterm = require 'wezterm'
local act = wezterm.action

return {
    keys = {
        { key = 'LeftArrow', mods = 'CTRL | SHIFT', action = act.ActivateTabRelative(-1) },
        { key = 'RightArrow', mods = 'CTRL | SHIFT', action = act.ActivateTabRelative(1) },
    },
    font = wezterm.font_with_fallback {
        'JetBrains Mono',
        'Fira Code',
        'Hack',
        'DengXian'
    },
    font_size = 13,
}
