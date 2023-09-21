#!/bin/bash

run_with_sudo() {
    sudo pacman -Syu
    sudo pacman -S sxhkd alacritty feh picom xorg-server xsetroot
    echo "Install SauceCodePro from the Nerd Fonts website :D"
}

run_with_doas() {
    doas pacman -Syu
    doas pacman -S sxhkd alacritty feh picom xorg-server xsetroot
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
