#!/bin/bash
set -ouex pipefail

# add other desired packages
dnf5 install -y \
    firefox \
    gnome-shell-extension-drive-menu \
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
