rm -rfv ($env.HOME)/.config/nvim
rm -rfv ($env.HOME)/.config/waybar
rm -rfv ($env.HOME)/.config/wezterm
rm -rfv ($env.HOME)/.config/hypr
rm -rfv ($env.HOME)/.config/background_images

ln -s ($env.PWD)/nvim ($env.HOME)/.config/nvim
ln -s ($env.PWD)/waybar ($env.HOME)/.config/waybar
ln -s ($env.PWD)/wezterm ($env.HOME)/.config/wezterm
ln -s ($env.PWD)/hypr ($env.HOME)/.config/hypr
ln -s ($env.PWD)/background_images ($env.HOME)/.config/background_images
