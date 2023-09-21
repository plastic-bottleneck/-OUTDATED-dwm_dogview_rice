#!/bin/bash

# dwm-dogview b&w rice by Plastic Bottleneck
# https://github.com/plastic-bottleneck/

copy_dir() {
    mkdir -p $HOME/src
    mkdir -p $HOME/pix/wal
    mkdir -p $HOME/.config
    $super cp src/wal1.png $HOME/pix/wal/
    $super cp -r src/dwm $HOME/src/
    $super cp -r src/dmenu $HOME/src/
    $super cp -r src/alacritty $HOME/.config/
    $super cp src/xinitrc $HOME/.xinitrc
    $super cp -r src/sxhkd $HOME/.config/
}

make_install() {
    compile="make"
    install="$super make clean install"
    cd $HOME/src
    cd dwm && $compile && $install && cd ../
    cd dmenu && $compile && $install && cd ../

    echo && echo "Done."
    echo "You can edit the files in the ~/src/ folder."
    echo "Make sure you have picom, feh, xsetroot, xorg(-server), SauceCodePro, sxhkd and alacritty installed to use this rice!"
    echo "If not then just run the package_(distro).sh file for Gentoo, Arch and Debian Distros ;p"
    echo "Thanks!!! :D" 
}

run_with_sudo() {
    echo "...sudo found..."
    copy_dir
    cd $HOME/src
    super=sudo
    make_install
}

run_with_doas() {
    echo "...doas found..."
    copy_dir
    cd $HOME/src
    super=doas
    make_install
}

if command -v sudo >/dev/null 2>&1; then
    run_with_sudo
elif command -v doas >/dev/null 2>&1; then
    run_with_doas
else
    echo "!!!ERROR: Neither sudo nor doas is available on this system! Copy and install the files by yourself ;p" && echo
    exit 1
fi
