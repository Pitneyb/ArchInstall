#!/bin/bash

echo
echo "INSTALLING XORG"
echo

PKGS=(
        'xorg-server'           # XOrg server
        'xorg-xinit'            # XOrg init
        'xorg-twm'              # Tab Window Manager for the X Window System
        'xorg-xclock'           # X clock
        'xterm'                 # X Terminal Emulator
        'xorg-xprop'            # Property displayer for X
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo create user .xinitrc
cp /etc/X11/xinit/xinitrc ~/.xinitrc

echo
echo "Done!"
echo
