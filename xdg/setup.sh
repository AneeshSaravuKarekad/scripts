#! /bin/bash

set -e
echo -e "${GREEN}[INFO]${NC} Setting up XDG directories..."

setup_xdg_dirs() {
    echo -e "${GREEN}[INFO]${NC} Setting up XDG directories..."
    sudo pacman -S --needed xdg-user-dirs

    mkdir -p ~/desktop
    mkdir -p ~/downloads
    mkdir -p ~/documents
    mkdir -p ~/music
    mkdir -p ~/pictures
    mkdir -p ~/public
    mkdir -p ~/videos
    mkdir -p ~/templates
    
    cp ~/scripts/bash/utils/user-dirs.dirs ~/.config/user-dirs.dirs
    cp ~/scripts/bash/utils/user-dirs.locale ~/.config/user-dirs.locale
}

setup_xdg_dirs
xdg-user-dirs-update

echo -e "${GREEN}[INFO]${NC} XDG directories set up successfully!"
