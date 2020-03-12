!/usr/bin/env bash

echo
echo "INSTALLING AUDIO COMPONENTS"
echo

PKGS=(
        'pulseaudio'            # Pulse Audio sound components
        'pulseaudio-alsa'       # Alsa configuration for pulse audio
        'plasma-pa'             # Plasma applet for audio volume management using PulseAudio
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed | tee -a archinstall.log
done

echo
echo "Done!"
echo 
