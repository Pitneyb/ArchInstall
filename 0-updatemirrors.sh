#!/bin/bash

# Sync repositories and Create mirrorlist
curl -o ~/mirrorlist "https://www.archlinux.org/mirrorlist/?country=TH&protocol=https&protocol=http&use_mirror_status=on"

sed -i 's/#S/S/g' ~/mirrorlist
rankmirrors ~/mirrorlist > ~/mirrorlist.fastest
sudo mv -v ~/mirrorlist.fastest /etc/pacman.d/mirrorlist
