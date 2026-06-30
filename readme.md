## Layout

### flake.nix
entry point:
Nixpkgs version
Home Manager input
Stylix input
Host definitions
Shared variables like username/hostname
Module imports


### configuration.nix
host-specific machine settings
Hostname
Imports for hardware config
Laptop-only settings
GPU-specific settings
Battery settings

### hardware-configuration.nix
nix generated hardware config

### system.nix
base os behaviour (similar to the original configuration.nix)

### desktop.nix
graphical desktop and adjacent things
gnome

### dev.nix
development tooling
git
direnv
compilers


### theme.nix
system wide visual setting
font
wallpaper
stylix

### caroccp.nix
personal user environment
user packages
terminal


