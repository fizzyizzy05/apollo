#!/bin/bash

set -ouex pipefail

sed -i 's/^NoExtract/#NoExtract/' /etc/pacman.conf
pacman -Sy --noconfirm glibc

echo "Enabling locales"
sed -i 's/^#\(.*\.UTF-8\)/\1/' /etc/locale.gen
locale-gen
