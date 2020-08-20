!/usr/bin/env bash

echo
echo "INSTALLING AUDIO COMPONENTS"
echo

PKGS=(
        'pulseaudio'            # Pulse Audio sound components
        'pulseaudio-alsa'       # Alsa configuration for pulse audio
        'pavucontrol'           # Pulse Audio Volume COntrol
        'alsa-utils'            # Advanced Linux Sound Architecture - Utilities
        'alsa-plugins'          # Additional ALSA plugins
        'alsa-firmware'         # Firmware binaries for laoder programs in alsa-tools and hotplug firmware loader
       # 'gst-plugins-good'      # GStreamer open-source multimedia framework good plugins
       'volumeicon'             # Volume Control icon for the system tray
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}" | tee -a archinstall.log
    sudo pacman -S "$PKG" --noconfirm --needed | tee -a archinstall.log
done

echo
echo "Done!"
echo 
