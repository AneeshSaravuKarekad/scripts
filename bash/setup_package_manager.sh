#! /bin/bash

set -e
source ~/scripts/bash/colors.sh

SOURCE_DIR=~/software/paru

install_paru(){
    set -e
    echo -e "${GREEN}[INFO]${NC} Installing paru from source..."
    git clone https://aur.archlinux.org/paru.git $SOURCE_DIR
    cd $SOURCE_DIR && makepkg -si 
}


install_paru
