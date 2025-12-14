#!/bin/bash

set -ouex pipefail

echo "Installing GNOME..."

pacman -S --noconfirm \
    gnome-shell \
    gnome-session \
    gdm \
    gnome-initial-setup \
    xdg-desktop-portal-gnome \
    gnome-control-center \
    gnome-backgrounds

# Install GNOME applications
pacman -S --noconfirm \
    nautilus \
    ptyxis \
    gnome-disk-utility

# Install Acessibility Tools
pacman -S --noconfirm \
    orca \
    speech-dispatcher \
    espeakup

systemctl enable gdm

# Build the gschema overrides
echo "Build the gschema overrides"
glib-compile-schemas --strict /usr/share/glib-2.0/schemas
