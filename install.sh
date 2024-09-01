#!/bin/bash


# Installing AUR manager, configuring mirrors, updating system and installing essential packages
sudo xargs pacman -S --noconfirm < deplist
cd $HOME/src/
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
sh $HOME/scripts/update_mirrorlist.sh
sudo pacman -Syu
xargs paru --noconfirm -S < pkglist

# Default folder structure
cd $HOME
mkdir -p src scripts misc music dwnlds pics vids docs vm
xdg-user-dirs-update


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
xrdb -merge ~/.config/x/.Xresources


# Set default shell to dash
sudo chsh --shell /bin/dash root
chsh --shell /bin/dash 
