rm -rfv ($env.HOME)/.config/nvim
rm -rfv ($env.HOME)/.config/waybar
rm -rfv ($env.HOME)/.config/wezterm
rm -rfv ($env.HOME)/.config/hypr
rm -rfv ($env.HOME)/.config/background_images
rm -rfv ($env.HOME)/.config/nushell
rm -rfv ($env.HOME)/.config/starship.toml
rm -fv ($env.HOME)/.config/.ignore
rm -rfv ($env.HOME)/.config/fuzzel
rm -rfv ($env.HOME)/.config/uwsm

ln -s ($env.PWD)/nvim ($env.HOME)/.config/nvim
ln -s ($env.PWD)/waybar ($env.HOME)/.config/waybar
ln -s ($env.PWD)/wezterm ($env.HOME)/.config/wezterm
ln -s ($env.PWD)/hypr ($env.HOME)/.config/hypr
ln -s ($env.PWD)/background_images ($env.HOME)/.config/background_images
ln -s ($env.PWD)/nushell ($env.HOME)/.config/nushell
ln -s ($env.PWD)/starship/starship.toml ($env.HOME)/.config/starship.toml
ln -s ($env.PWD)/.ignore ($env.HOME)/.config/.ignore
ln -s ($env.PWD)/fuzzel ($env.HOME)/.config/fuzzel
ln -s ($env.PWD)/uwsm ($env.HOME)/.config/uwsm
