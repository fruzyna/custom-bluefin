#!/bin/bash

# enable extensions
gnome-extensions enable launch-new-instance@gnome-shell-extensions.gcampax.github.com

# install flatpaks
flatpak install --noninteractive flathub \
    org.gnome.Connections \
    org.gnome.Boxes \
    org.keepassxc.KeePassXC \
    org.kicad.KiCad \
    org.libreoffice.LibreOffice \
    org.openscad.OpenSCAD \
    org.raspberrypi.rpi-imager \
    org.videolan.VLC

# uninstall flatpaks
flatpak uninstall --noninteractive \ 
    DejaDup \
    Pinta \
    Clapper \
    Maps \
    Firefox