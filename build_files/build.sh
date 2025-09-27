#!/bin/bash
set -ouex pipefail

# add WildRank dependencies
dnf5 install -y \
    python3-fastapi-slim+standard \
    python3-python-multipart \
    python3-requests \
    python3-uvicorn+standard

# add other desired packages
dnf5 install -y \
    firefox \
    gnome-shell-extension-drive-menu \
    java-21-openjdk-devel \
    keepassxc \
    pam-u2f \
    pamu2fcfg

# remove default gnome extensions
dnf5 remove -y \
    gnome-shell-extension-blur-my-shell \
    gnome-shell-extension-caffeine \
    gnome-shell-extension-dash-to-dock \
    gnome-shell-extension-gsconnect \
    gnome-shell-extension-logo-menu \
    gnome-shell-extension-tailscale-gnome-qs

# remove unwanted packages
dnf5 remove -y \
    tailscale \
    ublue-brew \
    ublue-motd

cp /ctx/post-install.sh /
chmod +x /post-install.sh
