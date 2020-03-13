#!/usr/bin/env bash

echo
echo "INSTALLING PRINTING COMPONENTS"
echo

PKGS=(
    #-----------------------PRINTING------------------------------------
    'cups'                  # Open source printer drivers
    'hplip'                 # HP Drivers
    'python-pyqqt5'         #
    'printer-manager'       # A tool for managing print jobs and printers
    
    #-----------------------SCANNING-------------------------------------
    
    'sane'                  # Scanner Access Now Easy
    'skanlite'              # Image scanning application for KDE
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}" | tee -a archinstall.log
    sudo pacman -S "$PKG" --noconfirm --needed | tee -a archinstall.log
done

echo
echo "Done!"
echo
