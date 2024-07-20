#!/bin/bash

set -ouex pipefail
RELEASE="$(rpm -E %fedora)"

# Install and remove rpm packages
dnf install android-tools gcc gcc-c++ gdb python3 python3-pip \
					cowsay figlet lolcat neofetch \
					netcat nmap testdisk vim-enhanced youtube-dl whois wl-clipboard \
					lm_sensors vulkan-tools \
      				adw-gtk3-theme papirus-icon-theme ibus-mozc gnome-console

dnf autoremove firefox firefox-langpacks \
							gnome-software gnome-software-rpm-ostree epiphany-runtime gnome-terminal gnome-terminal-nautilus \
							anthy-unicode ibus-anthy ibus-anthy-python kasumi-common kasumi-unicode ibus-hangul libhangul ibus-libzhuyin libzhuyin \
							nano nano-default-editor default-editor 
							

# Install flatpak packages [WIP]
