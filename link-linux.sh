zen_profile=

rm -rfv $HOME/.config/nvim
rm -rfv $HOME/.config/waybar
rm -rfv $HOME/.config/wezterm
rm -rfv $HOME/.config/hypr
rm -rfv $HOME/.config/background_images
rm -rfv $HOME/.config/nushell
rm -rfv $HOME/.config/starship.toml
rm -fv $HOME/.config/.ignore
rm -rfv $HOME/.config/fuzzel
rm -rfv $HOME/.config/uwsm
rm -rfv "$HOME/.zen/$zen_profile.Default (release)/chrome"
rm -fv "$HOME/.zen/$zen_profile.Default (release)/zen-keyboard-shortcuts.json"
rm -fv "$HOME/.zen/$zen_profile.Default (release)/zen-themes.json"
rm -fv "$HOME/.zen/$zen_profile.Default (release)/prefs.js"

ln -s $PWD/nvim $HOME/.config/nvim
ln -s $PWD/waybar $HOME/.config/waybar
ln -s $PWD/wezterm $HOME/.config/wezterm
ln -s $PWD/hypr $HOME/.config/hypr
ln -s $PWD/background_images $HOME/.config/background_images
ln -s $PWD/nushell $HOME/.config/nushell
ln -s $PWD/starship/starship.toml $HOME/.config/starship.toml
ln -s $PWD/.ignore $HOME/.config/.ignore
ln -s $PWD/fuzzel $HOME/.config/fuzzel
ln -s $PWD/uwsm $HOME/.config/uwsm
ln -s $PWD/zen-profile/chrome "$HOME/.zen/$zen_profile.Default (release)/chrome"
ln -s $PWD/zen-profile/zen-keyboard-shortcuts.json "$HOME/.zen/$zen_profile.Default (release)/zen-keyboard-shortcuts.json"
ln -s $PWD/zen-profile/zen-themes.json "$HOME/.zen/$zen_profile.Default (release)/zen-themes.json"
ln -s $PWD/zen-profile/prefs.js "$HOME/.zen/$zen_profile.Default (release)/prefs.js"
