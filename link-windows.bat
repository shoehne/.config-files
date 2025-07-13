rm -rfv ($env.XDG_CONFIG_HOME)/nvim
rm -rfv ($env.XDG_CONFIG_HOME)/wezterm
rm -rfv ($env.XDG_CONFIG_HOME)/background_images
rm -rfv ($env.XDG_CONFIG_HOME)/nushell
rm -rfv ($env.XDG_CONFIG_HOME)/lf
rm -fv ($env.XDG_CONFIG_HOME)/starship.toml

mklink /D ($env.XDG_CONFIG_HOME)\nvim ($env.PWD)\nvim
mklink /D ($env.XDG_CONFIG_HOME)\wezterm ($env.PWD)\wezterm
mklink /D ($env.XDG_CONFIG_HOME)\background_images ($env.PWD)\background_images
mklink /D ($env.XDG_CONFIG_HOME)\nushell ($env.PWD)\nushell
mklink /D ($env.XDG_CONFIG_HOME)\lf ($env.PWD)\lf
mklink ($env.XDG_CONFIG_HOME)\starship.toml ($env.PWD)\starship\starship.toml
