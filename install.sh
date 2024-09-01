#!/bin/bash

# Install font
echo "Downloading fonts"
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/CascadiaCode.zip --output-document /tmp/CaskaydiaCove.zip

sudo unzip -o /tmp/CaskaydiaCove.zip -d /usr/share/fonts/
sudo rm -f /usr/share/fonts/LICENSE
sudo rm -f /usr/share/fonts/README.md

rm -f /tmp/CaskaydiaCove.zip

sudo fc-cache -v

# Install configs
stow --target=$HOME user/
