#!/bin/bash

echo
echo "INSTALLING NETWORKING COMPONENTS"
echo

PKGS=(
        'dialog'                    # Enables shell scripts to trigger dialog boxex
        'networkmanager'            # Network Connection Manager
        'plasma-nm'                 # System tray icon/utility for network connectivity
        
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}" | tee -a archinstall.log
    sudo pacman -S "$PKG" --noconfirm --needed | tee -a archinstall.log
done

echo
echo "Done!"
echo
