local wezterm = require 'wezterm'
local act = wezterm.action
local module = {}

function module.keymaps (config)


	disable_default_key_bindings = true
	config.keys = {

			{
				key = 'q',
				mods = 'CTRL',
				action = act.CloseCurrentTab { confirm = false }
			},
			{
				key = 'n',
				mods = 'CTRL',
				action = act.SpawnTab 'CurrentPaneDomain'
			},
			{
				key = 'LeftArrow',
				mods = 'CTRL',
				action = act.ActivateTabRelative(-1)
			},
			{
				key = 'h',
				mods = 'CTRL',
				action = act.ActivateTabRelative(-1)
			},
			{
				key = 'RightArrow',
				mods = 'CTRL',
				action = act.ActivateTabRelative(1)
			},
			{
				key = 'l',
				mods = 'CTRL',
				action = act.ActivateTabRelative(1)
			},
			{
				key = 'p',
				mods = 'CTRL',
				action = act.ActivateLastTab
			},
			{
				key = 'PageUp',
				mods = 'CTRL',
				action = act.MoveTabRelative(-1)
			},
			{
				key = 'PageDown',
				mods = 'CTRL',
				action = act.MoveTabRelative(1)
			},
			{
				key = 'Q',
				mods = 'CTRL|SHIFT',
				action = act.CloseCurrentPane { confirm = false }
			},
			{
				key = 'D',
				mods = ' CTRL|SHIFT',
				action = act.SplitHorizontal { domain = "CurrentPaneDomain" }
			},
			{
				key = 'F',
				mods = 'CTRL|SHIFT',
				action = act.SplitVertical { domain = "CurrentPaneDomain" }
			},
			{
				key = 'LeftArrow',
				mods = 'CTRL|SHIFT',
				action = act.ActivatePaneDirection 'Left'
			},
			{
				key = 'H',
				mods = 'CTRL|SHIFT',
				action = act.ActivatePaneDirection 'Left'
			},
			{
				key = 'UpArrow',
				mods = 'CTRL|SHIFT',
				action = act.ActivatePaneDirection 'Up'
			},
			{
				key = 'K',
				mods = 'CTRL|SHIFT',
				action = act.ActivatePaneDirection 'Up'
			},
			{
				key = 'DownArrow',
				mods = 'CTRL|SHIFT',
				action = act.ActivatePaneDirection 'Down'
			},
			{ 
				key = 'J',
				mods = 'CTRL|SHIFT',
				action = act.ActivatePaneDirection 'Down'
			},
			{
				key = 'RightArrow',
				mods = 'CTRL|SHIFT',
				action = act.ActivatePaneDirection 'Right'
			},
			{
				key = 'L',
				mods = 'CTRL|SHIFT',
				action = act.ActivatePaneDirection 'Right'
			},
			{
				key = 'R',
				mods = 'CTRL|SHIFT',
				action = act.ReloadConfiguration
			},
			{
				key = 'C',
				mods = 'CTRL|SHIFT',
				action = act.CopyTo 'Clipboard'
			},
			{
				key = 'N',
				mods = 'CTRL|SHIFT',
				action = act.SpawnWindow
			},
			{
				key = 'U',
				mods = 'CTRL|SHIFT',
				action = act.CharSelect {
					copy_on_select = true,
					copy_to = 'ClipboardAndPrimarySelection'
				}
			},
			{
				key = 'V',
				mods = 'CTRL|SHIFT',
				action = act.PasteFrom 'Clipboard'
			},
			{
				key = 'P',
				mods = 'CTRL|SHIFT',
				action = act.PasteFrom 'PrimarySelection'
			},
			{
				key = 'PageUp',
				mods = 'SHIFT',
				action = act.ScrollByPage(-1)
			},
			{
				key = 'PageDown',
				mods = 'SHIFT',
				action = act.ScrollByPage(1)
			},
			{
				key = 'X',
				mods = 'CTRL|SHIFT',
				action = act.ActivateCopyMode
			},
      {
        key = 'F12',
        mods = 'CTRL|SHIFT',
        action = act.ShowDebugOverlay
      },
	}

    for i =  1, 8 do 
        table.insert(config.keys, {
            key = tostring(i),
            mods = 'CTRL|ALT',
            action = act.MoveTab(i - 1),
        })
        table.insert(config.keys, {
            key = tostring(i),
            mods = 'CTRL',
            action = act.ActivateTab(i - 1),
        })
    end
end

return module
