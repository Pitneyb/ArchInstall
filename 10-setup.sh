#!/usr/bin/env bash

echo
echo "FINAL SETUP AND CONFIGURATION"

# ---------------------------------------------------------------

echo
echo "Enabling the lightdm deamon so that we can login"

sudo systemctl enable lightdm

# ---------------------------------------------------------------

echo
echo "Add user to groups"

sudo usermod -aG cups,vboxsf steve

# ---------------------------------------------------------------

echo
echo "Enable bluetooth deamon"

sudo systemctl enable bluetooth.service

# ---------------------------------------------------------------

echo
echo "Enable the cups service so that we can print"

sudo systemctl enable org.cups.cupsd.socket

# ---------------------------------------------------------------

echo
echo "Prevent new Wine file associations"
echo

sudo sed -i 's/winemenubuilder.exe -a -r/winemenubuilder.exe -r/g' /usr/share/wine/wine.inf

# Generate the pacman hook to prevent a package upgrade from 
# overriding the modified file

if [ ! -d "/etc/pacman.d/hooks" ]
then
    echo "Creating hooks Direcory"
    sudo mkdir /etc/pacman.d/hooks
fi

cat <<EOF > stop-wine-associations.hook
[Trigger]
Type = Path
Operation = Install
Operation = Upgrade
Target = usr/share/wine/wine.inf

[Action]
Description = Stopping Wine from Hijacking file associations . . .
When = PostTransaction
Exec = /usr/bin/sed -i 's/winemenubuilder.exe -a -r/winemenubuilder.exe -r/g' /usr/share/wine/wine.inf

EOF

echo "Moving hook file"
sudo mv stop-wine-associations.hook /etc/pacman.d/hooks/stop-wine-associations.hook

# ---------------------------------------------------------------

echo
echo "Enable cronie"
echo

sudo systemctl enable cronie

# ---------------------------------------------------------------

echo
echo "Setup ufw"
echo 
# set default  rules
echo "Setting ufw rules"
sudo ufw default allow outgoing
sudo ufw default deny incoming

PathF1nder
# rules for network printing
sudo ufw allow to 192.168.1.107
sudo ufw allow from 192.168.1.107

# Rules for KDE Connect
sudo ufw allow 1714:1764/udp
sudo ufw allow 1714:1764/tcp

# enable ufw
echo "enable ufw"
sudo systemctl enable ufw

# ---------------------------------------------------------------

echo
echo "Network Setup"

sudo systemctl disable dhcpcd
sudo systemctl enable NetworkManager

# ---------------------------------------------------------------

echo "Done!"
echo 
echo "Reboot now..."
echo
