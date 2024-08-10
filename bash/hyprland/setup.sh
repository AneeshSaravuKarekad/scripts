#! /bin/bash

set -e

source ~/scripts/bash/colors.sh

SOURCE_DIR=~/software/hyprland

install_dependecies() {
    set -e
    echo -e "${GREEN}[INFO]${NC} Installing hyprland dependencies..."

    sudo pacman -S --needed gdb ninja gcc cmake meson cpio tomlplusplus \
        xcb-util-wm xcb-proto xcb-util xcb-util-keysyms xcb-util-errors \
        libxcb libxfixes libx11 libxcomposite libxrender libxkbcommon \
        pixman wayland-protocols cairo pango seatd \
        xorg-xwayland xorg-xinput \
        libinput libliftoff libdisplay-info \
        hyprlang hyprcursor hyprwayland-scanner aquamarine hyprutils

    # paru -S --needed hyprutils-git
}

install_hyprland() {
    set -e
    echo -e "${GREEN}[INFO]${NC} Cloning hyprland source..."
    git clone --recursive https://github.com/hyprwm/Hyprland $SOURCE_DIR

    echo -e "${GREEN}[INFO]${NC} Installing Hyprland..."
    cd hyprland && make all && sudo make install
}

install_dependecies
install_hyprland

echo -e "${GREEN}[INFO]${NC} Hyprland installed successfully!"
