#!/bin/bash

run_with_sudo() {
    sudo apt update -y && sudo apt upgrade -y
    sudo apt install sxhkd alacritty feh picom xorg-server
    echo "Install SauceCodePro from the Nerd Fonts website :D"
}

run_with_doas() {
    doas apt update -y && doas apt upgrade -y
    doas apt-get install sxhkd alacritty feh picom xorg-server
    echo "Install SauceCodePro from the Nerd Fonts website :D"
}

if command -v sudo >/dev/null 2>&1; then
    run_with_sudo
elif command -v doas >/dev/null 2>&1; then
    run_with_doas
else
    echo "ERROR: Neither sudo nor doas is available on this system. Install the packages by yourself :)" && echo
    exit 1
fi
