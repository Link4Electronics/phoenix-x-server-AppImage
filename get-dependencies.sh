#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package dependencies..."
echo "---------------------------------------------------------------"
# pacman -Syu --noconfirm PACKAGESHERE

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano

# Comment this out if you need an AUR package
make-aur-package zig0.14-bin
ln -sf /usr/bin/zig0.14 /usr/bin/zig
make-aur-package phoenix-x-server-git

# If the application needs to be manually built that has to be done down here
