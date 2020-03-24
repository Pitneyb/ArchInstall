#!/usr/bin/env bash

echo
echo "INSTALLING SOFTWARE"
echo

PKGS=(

    # SYSTEM --------------------------------------------------------------

    'linux-lts'             # Long term support kernel
    'linux-lts-headers'     # Long term support kernel headers

    # TERMINAL UTILITIES --------------------------------------------------

    'apcupsd'               # Power management and Control of APC's UPS
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
    'parted'                # CL Disk Utility
    'smartmontools'         # Control and monitor S.M.A.R.T drives
    'speedtest-cli'         # Internet speed via terminal
    'terminator'            # Terminal emulator that supports tabs and grids
    'xdg-user-dirs'         # Manage user directories like ~/Desktop and ~/Music
    
    # GENERAL UTILITIES ---------------------------------------------------

    'kgpg'                   # A GnuPG frontend
    'gparted'                # Partition magic clone
    'grsync'                 # Remote file sync utility
    'keepassxc'              # Password manager
    'unrar'                  # RAR uncompression program
     
    # DEVELOPMENT ---------------------------------------------------------

    'meld'                  # File/directory comparison
    
    # MEDIA ---------------------------------------------------------------

    'clementine'            # Music player and library organizer
    'dvdbackup'             # Tool to rip video DVDs from the command line
    'ffmpegthumbs'          # FFmpeg-based thumbnail creator for video files
    'handbrake'             # Multithreaded video transcoder
    'kdenlive'              # Movie Render
    'kid3-qt'               # An MP3, Ogg/Vorbis and FLAC tag editor, qt version
    'libdvdcss'             # Portable abstraction library for DVD decryption
    'libdvdnav'             # The library for xine-dvdnav plugin.
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
    'libreoffice-fresh-en-gb'   # English (GB) language pack for LibreOffice
    'libreoffice-fresh-th'  # Thai language pack for LibreOffice
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
