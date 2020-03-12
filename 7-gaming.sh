#!/usr/bin/env bash

echo
echo "INSTALLING GAMING COMPONENTS"
echo

PKGS=(
    
    #-----------------------STEAM-------------------------------------
    
    'steam'                 # Valve's digital software delivery system
    
    #-----------------------GOGREPO-----------------------------------
    
    'python-html5lib'       # Python HTML parser/tokenizer
    'python-html2text'      # HTML to markdown-structured text converter
    'python-requests'       # Python HTTP for humans
    'python-pyopenssl'      # Wrapper module around OpenSSL library
    
    #-----------------------WINE-STAGING-------------------------------
    
    'wine-staging'          # Compatibility layer for running Windows Programs
    'wine-gecko'            #
    'wine-mono'             #
    
    #-----------------------LUTRIS--------------------------------------
    
    'lutris'                # Open Gaming Platform
    
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed | tee -a archinstall.log
done

echo
echo "Done!"
echo
