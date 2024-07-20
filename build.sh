#!/bin/bash

set -ouex pipefail
RELEASE="$(rpm -E %fedora)"

# Install and remove rpm packages
rpm-ostree install android-tools cowsay figlet gcc gcc-c++ gdb lolcat neofetch netcat nmap python3 python3-pip testdisk vim-enhanced whois wl-clipboard adw-gtk3-theme youtube-dl lm_sensors vulkan-tools
rpm-ostree override remove firefox firefox-langpacks gnome-software-rpm-ostree

# Install flatpak packages [WIP]
