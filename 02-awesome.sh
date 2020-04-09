#!/bin/bash

echo
echo "INSTALLING AWESOME"
echo

PKGS=(
        'lxdm-gtk3'             # Lightweight X11 Display Manager (GTK+ 3 version)
        'gtk3'                  # GObject-based multi-platform GUI toolkit
        'awesome'               # Highly configurable framework window manager
        
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo "Create local directory for config/Themes"
if [ ! -d "~/.config/awesome" ]
    then
        echo "Creating Directory"
        mkdir -p "~/.config/awesome"
fi

echo "Copy awesome config and Themes to users Directory"
cp /etc/xdg/awesome/rc.lua ~/.config/awesome/
cp -r /usr/share/awesome/themes/ ~/.config/awesome/

echo
echo "Done!"
echo
