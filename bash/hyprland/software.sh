#! /bin/bash

set -e
echo -e "${GREEN}[INFO]${NC} Installing critical softwares..."

# TODO: change exec-once for dunst: exec-once=dunst
# TODO: change exec-once for polkit: exec-once=/usr/lib/polkit-kde-authentication-agent-1
sudo pacman -S --needed dunst pipewire wireplumber xdg-desktop-portal-hyprland xdg-desktop-portal-gtk polkit-kde-agent qt5-wayland qt6-wayland

echo -e "${GREEN}[INFO]${NC} Critical softwares installed successfully!"
