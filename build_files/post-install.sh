#!/bin/bash

# enable extensions
gnome-extensions enable launch-new-instance@gnome-shell-extensions.gcampax.github.com

# install flatpaks
flatpak install --noninteractive flathub \
    app.drey.Warp \
    io.github.mrvladus.List \
    io.gitlab.adhami3310.Impression \
    org.gnome.Boxes \
    org.kicad.KiCad \
    org.libreoffice.LibreOffice \
    org.openscad.OpenSCAD \
    org.videolan.VLC

# uninstall flatpaks
flatpak uninstall --noninteractive \ 
    DejaDup \
    Pinta \
    Clapper \
    Maps \
    Firefox