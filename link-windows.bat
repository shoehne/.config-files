SET zenprofile=sy0xa1c7
rm -rfv %XDG_CONFIG_HOME%\nvim
rm -rfv %XDG_CONFIG_HOME%\wezterm
rm -rfv %XDG_CONFIG_HOME%\background_images
rm -rfv %XDG_CONFIG_HOME%\nushell
rm -rfv %XDG_CONFIG_HOME%\starship.toml
rm -rfv %XDG_CONFIG_HOME%\.ignore
rm -rfv %XDG_CONFIG_HOME%\.clang-format
rm -rfv "%USERPROFILE%\AppData\Roaming\zen\Profiles\%zenprofile%.Default (release)\chrome"
rm -fv "%USERPROFILE%\AppData\Roaming\zen\Profiles\%zenprofile%.Default (release)\prefs.js"
rm -fv "%USERPROFILE%\AppData\Roaming\zen\Profiles\%zenprofile%.Default (release)\zen-keyboard-shortcuts.json"
rm -fv "%USERPROFILE%\AppData\Roaming\zen\Profiles\%zenprofile%.Default (release)\zen-themes.json"

mklink /D %XDG_CONFIG_HOME%\nvim %~dp0nvim
mklink /D %XDG_CONFIG_HOME%\wezterm %~dp0wezterm
mklink /D %XDG_CONFIG_HOME%\background_images %~dp0background_images
mklink /D %XDG_CONFIG_HOME%\nushell %~dp0nushell
mklink %XDG_CONFIG_HOME%\starship.toml %~dp0starship\starship.toml
mklink %XDG_CONFIG_HOME%\.ignore %~dp0.ignore
mklink %XDG_CONFIG_HOME%\.clang-format %~dp0.clang-format
mklink /D "%USERPROFILE%\AppData\Roaming\zen\Profiles\%zenprofile%.Default (release)\chrome" %~dp0zen-profile\chrome
mklink "%USERPROFILE%\AppData\Roaming\zen\Profiles\%zenprofile%.Default (release)\prefs.js" %~dp0zen-profile\prefs.js
mklink "%USERPROFILE%\AppData\Roaming\zen\Profiles\%zenprofile%.Default (release)\zen-keyboard-shortcuts.json" %~dp0zen-profile\zen-keyboard-shortcuts.json
mklink "%USERPROFILE%\AppData\Roaming\zen\Profiles\%zenprofile%.Default (release)\zen-themes.json" %~dp0zen-profile\zen-themes.json
PAUSE
