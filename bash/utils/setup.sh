#! /bin/bash

set -e

source ~/scripts/bash/colors.sh

setup_fonts() {
    echo -e "${GREEN}[INFO]${NC} Setting up fonts and system font configuration..."
    sudo pacman -S --needed noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-jetbrains-mono-nerd

    # TODO: set up font configuration for the system
}

install_utils() {
    echo -e "${GREEN}[INFO]${NC} Installing utilities..."
    sudo pacman -S --needed htop bat firefox neovim wezterm yazi
    paru -S --needed xdg-ninja
}

setup_fonts
install_utils

echo -e "${GREEN}[INFO]${NC} Utilities and fonts set up successfully!"
