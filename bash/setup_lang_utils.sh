#! /bin/bash

set -e
source ~/scripts/bash/colors.sh

setup_lang_utils() {
    set -e

    echo -e "${GREEN}[INFO]${NC} Setting up Rustlang..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    echo -e "${GREEN}[INFO]${NC} Rustlang setup complete."
}

setup_lang_utils
echo -e "${GREEN}[INFO]${NC} Language utilities setup complete."
