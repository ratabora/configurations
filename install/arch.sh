#!/usr/bin/env bash

: "${CODE_HOME?Need to set CODE_HOME}"
echo "Need to pre install sudo and add user to sudoers file"
# TODO: sudo dialog wifi-menu


# install all my wonderful packages
sudo pacman -S --noconfirm --needed base-devel chromium vim git thefuck linux-headers zsh zsh-completions gnome-tweak-tool ntp xf86-input-synaptics openssh

# install yaourt
cd $CODE_HOME
git clone https://aur.archlinux.org/package-query.git
cd package-query
makepkg -si --noconfirm --needed
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt
makepkg -si --noconfirm --needed
cd ..

yaourt -S --noconfirm --needed touchegg gnome-session-properties

# update os
sudo pacman -Syu
