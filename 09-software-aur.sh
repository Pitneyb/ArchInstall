#!/usr/bin/env bash

echo
echo "INSTALLING AUR SOFTWARE"
echo

echo
echo "Check for build Directory"
echo

if [ ! -d "${HOME}/builds"
then
    mkdir ${HOME}/builds
fi

cd "${HOME}/builds"

PKGS=(

    # UTILITIES -------------------------------------------------
	
	'yay'                  # Yet another Aur Helper
	'timeshift'            # timeshift
)

for PKG in "${PKGS[@]}"; do
    echo "Prepareing. . git clone https://aur.archlinux.org/$PKG.git"
    git clone https://aur.archlinux.org/$PKG.git
    #echo $PKG
    cd $PKG
    #pwd
    makepkg -sri -L --noconfirm
    cd ..
done

echo
echo "Done!"
echo
