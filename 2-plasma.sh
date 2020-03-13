#!/bin/bash

echo
echo "INSTALLING PLASMA"
echo

PKGS=(
        # Desktop -----------------------------
        
        'plasma-desktop'        # plasma desktop
        'lightdm'               # lightdm
        'lightdm-gtk-greeter'   # Default lightdm Greeter
        
        # KDE Applications----------------------
        'dolphin'               # KDE File Manager
        'kate'                  # Advanced Text Editor
        'khelpcenter'           # show KDE Applications' documentation
        'konsole'               # terminal  emulator
        'kwrited'               # listen for wall and write messages
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}" | tee -a archinstall.log
    sudo pacman -S "$PKG" --noconfirm --needed | tee -a archinstall.log
done

echo
echo "Done!"
echo
