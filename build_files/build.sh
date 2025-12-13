#!/bin/bash

set -ouex pipefail

# Install the base system packages.
/ctx/03-base.sh
/ctx/05-gnome.sh
