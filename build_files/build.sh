#!/bin/bash

set -ouex pipefail

# Set the os-release info
/ctx/build_files/00-os-release.sh

# Enable locales
/ctx/build_files/01-locales.sh

# Install the base system packages.
/ctx/build_files/03-base.sh

# Install GNOME
/ctx/build_files/05-gnome.sh
