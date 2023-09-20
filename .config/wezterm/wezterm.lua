local wezterm = require("wezterm")
local act = wezterm.action

local options = {
	font = wezterm.font_with_fallback({
    "Fantasque Sans Mono",
		"JetBrains Mono",
		"Fira Code",
		"Hack",
		"DengXian",
	}),
	check_for_updates = false,
	enable_wayland = true,
	font_size = 13,
	show_update_window = false,
	window_close_confirmation = 'NeverPrompt',
	skip_close_confirmation_for_processes_named = {
  	'bash',
  	'sh',
  	'zsh',
  	'fish',
  	'tmux',
  	'nu',
  	'cmd.exe',
  	'pwsh.exe',
  	'powershell.exe',
	}
}

return options
