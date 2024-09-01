#!/bin/bash

# Default folder structure
mkdir -p $HOME/src/ $HOME/scripts

# Installing AUR manager, configuring mirrors, updating system and installing essential packages

sudo xargs pacman -S --noconfirm < buildtoolslist

cd $HOME/src/
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

echo -e "sudo reflector --country Russia --latest 10 --sort rate --protocol http --protocol https --save /etc/pacman.d/mirrorlist" > $HOME/scripts/update_mirrorlist.sh
sh $HOME/scripts/update_mirrorlist.sh

sudo pacman -Syu

xargs paru --noconfirm -S < pkglist


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

# Set default shell to dash

sudo chsh --shell /bin/dash root
chsh --shell /bin/dash 
