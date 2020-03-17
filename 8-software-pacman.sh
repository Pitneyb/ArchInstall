#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel
    'linux-lts-headers'     # Long term support kernel headers

    # TERMINAL UTILITIES --------------------------------------------------

    'bash-completion'       # Tab completion for Bash
    'bleachbit'             # File deletion utility
    'cronie'                # cron jobs
    'gtop'                  # System monitoring via terminal
    'gufw'                  # Firewall manager
    'hardinfo'              # Hardware info app
    'htop'                  # Process viewer
    'man-db'                # utility for reading man pages
    'man-pages'             # Linux man pages
    'neofetch'              # Shows system info when you launch terminal
    'numlockx'              # Turns on numlock in X11
    'openssh'               # SSH connectivity tools
    'speedtest-cli'         # Internet speed via terminal
    
    # GENERAL UTILITIES ---------------------------------------------------

    'kgpg'                   # A GnuPG frontend
    'gparted'                # Partition magic clone
    'grsync'                 # Remote file sync utility
    'keepassxc'              # Password manager
     
    # DEVELOPMENT ---------------------------------------------------------

    'meld'                  # File/directory comparison
    
    # MEDIA ---------------------------------------------------------------

    'clementine'            # Music player and library organizer
    'kdenlive'              # Movie Render
    'kid3-qt'               # An MP3, Ogg/Vorbis and FLAC tag editor, qt version
    'vlc'                   # Video player
    
    # INTERNET ------------------------------------------------------------
    
    'falkon'                # Web browser
    'firefox'               # Web Browser
    'thunderbird'           # Email program
    
    # GRAPHICS AND DESIGN -------------------------------------------------

    'gimp'                  # GNU Image Manipulation Program
    
    # PRODUCTIVITY --------------------------------------------------------

    'calibre-python3'       # Ebook management application
    'hunspell'              # Spellcheck libraries
    'hunspell-en_GB'        # English spellcheck library
    'libreoffice-fresh'     # Libre office with extra features
    'xpdf'                  # PDF viewer

    # VIRTUALIZATION ------------------------------------------------------

#    'virtualbox'
#    'virtualbox-host-modules-arch'
)

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done

echo
echo "Done!"
echo
