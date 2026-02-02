zen_profile=

rm -rfv "$HOME/.zen/$zen_profile.Default (release)/chrome"
rm -fv "$HOME/.zen/$zen_profile.Default (release)/zen-keyboard-shortcuts.json"
rm -fv "$HOME/.zen/$zen_profile.Default (release)/zen-themes.json"
rm -fv "$HOME/.zen/$zen_profile.Default (release)/prefs.js"

ln -s $PWD/zen-profile/chrome "$HOME/.zen/$zen_profile.Default (release)/chrome"
ln -s $PWD/zen-profile/zen-keyboard-shortcuts.json "$HOME/.zen/$zen_profile.Default (release)/zen-keyboard-shortcuts.json"
ln -s $PWD/zen-profile/zen-themes.json "$HOME/.zen/$zen_profile.Default (release)/zen-themes.json"
ln -s $PWD/zen-profile/prefs.js "$HOME/.zen/$zen_profile.Default (release)/prefs.js"
