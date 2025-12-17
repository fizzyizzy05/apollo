#!/bin/bash

set -ouex pipefail

# Enable Network Manager & systemd-resolved
systemctl enable NetworkManager.service
systemctl enable systemd-resolved.service

# Enable gdm
systemctl enable gdm

# Disable systemd's firstboot
systemctl mask systemd-firstboot.service

# Make sure that brew can be used with bash
echo "source /etc/profile.d/brew.sh" | tee -a /etc/bash.bashrc

# Build the gschema overrides
echo "Build the gschema overrides"
glib-compile-schemas --strict /usr/share/glib-2.0/schemas
