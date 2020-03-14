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
echo "Network Setup"

sudo systemctl disable dhcpcd
sudo systemctl enable NetworkManager

# ---------------------------------------------------------------

echo "Done!"
echo 
echo "Reboot now..."
echo
