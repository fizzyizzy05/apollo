#!/bin/bash

set -ouex pipefail

echo "Installing base operating system software..."

pacman -S --noconfirm \
    nano \
    micro \
    vim \
    htop \
    bash \
    networkmanager \
    distrobox \
    sudo

systemctl enable NetworkManager.service
