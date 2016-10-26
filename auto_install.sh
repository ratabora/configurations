#!/bin/sh
# Adapted from the glorious https://github.com/pyro2927/dotfiles

cd ~
git clone https://github.com/ratabora/dotfiles.git
cd dotfiles && bash ./install.sh && bash ./symlink.sh
