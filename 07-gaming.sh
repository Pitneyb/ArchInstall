#!/usr/bin/env bash

echo
echo "INSTALLING GAMING COMPONENTS"
echo

PKGS=(
    
    #-----------------------STEAM-------------------------------------
    
    'steam'                     # Valve's digital software delivery system
    
    #-----------------------GOGREPO-----------------------------------
    
    'python-html5lib'           # Python HTML parser/tokenizer
    'python-html2text'          # HTML to markdown-structured text converter
    'python-requests'           # Python HTTP for humans
    'python-pyopenssl'          # Wrapper module around OpenSSL library
    
    #-----------------------WINE-STAGING-------------------------------
    
    'wine-staging'              # Compatibility layer for running Windows Programs
    'wine-mono'                 # Wine's built-in replacement for Microsoft's .NET Framework
    'wine-gecko'                # Wine's built-in replacement for Microsoft's Internet Explorer
    
    #-----------------------DEPENDENCIES--------------------------------
    
    'lib32-vulkan-icd-loader'   # Vulkan Installable Client Driver (ICD) Loader (32-bit)
    
    #-----------------------LUTRIS--------------------------------------
    
    'lutris'                    # Open Gaming Platform
    
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    echo
    sudo pacman -S "$PKG" --noconfirm --needed
    echo
done

echo
echo "Done!"
echo
