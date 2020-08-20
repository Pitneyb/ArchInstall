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
        'kcalc'                 # Scientific Calculator
        'kde-gtk-config'        # GTK2 and GTK3 Configurator for KDE
        'khelpcenter'           # show KDE Applications' documentation
        'kmymoney'              # Personl Finance manager for KDE
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
