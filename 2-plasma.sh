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
        
        
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
