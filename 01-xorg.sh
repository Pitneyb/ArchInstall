#!/bin/bash

echo
echo "INSTALLING XORG"
echo

PKGS=(
        'xorg-server'           # XOrg server
        'xorg-xinit'            # XOrg init
        'xorg-xrandr'           # XOrg randr
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}" | tee -a archinstall.log
    sudo pacman -S "$PKG" --noconfirm --needed | tee -a archinstall.log
done

echo create user .xinitrc
cp /etc/X11/xinit/xinitrc ~/.xinitrc

echo
echo "Done!"
echo
