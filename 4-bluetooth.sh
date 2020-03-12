!/usr/bin/env bash

echo
echo "INSTALLING BLUETOOTH COMPONENTS"
echo

PKGS=(
        'bluez'                 # Daemons for the bluetooth protocol stack
        'bluez-utils'           # Bluetooth development and debugging utilities
        'bluedevil'             # Integrate Bluetooth in plasma-desktop
        'pulseaudio-bluetooth'  # Bluetooth support for PulseAudio
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed | tee -a archinstall.log
done

echo
echo "Done!"
echo 
