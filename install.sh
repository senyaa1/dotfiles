#!/bin/bash

# Install font
echo "Downloading fonts"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip --output-document /tmp/CaskaydiaCove.zip

sudo unzip -o /tmp/CaskaydiaCove.zip -d /usr/share/fonts/
sudo rm -f /usr/share/fonts/LICENSE
sudo rm -f /usr/share/fonts/README.md

rm -f /tmp/CaskaydiaCove.zip

sudo fc-cache -v

# Install and apply configs
stow --target=$HOME user/ --adopt

sudo stow --target=/ root/ --adopt

echo "Merging XRDB"
xrdb -merge ~/.config/x/.Xresources

sudo chsh --shell /bin/dash root
chsh --shell /bin/dash 

sudo reflector --country Russia --latest 10 --sort rate --protocol http --protocol https --save /etc/pacman.d/mirrorlist
sudo pacman -Syu
