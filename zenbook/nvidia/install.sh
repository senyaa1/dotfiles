sudo pacman -S nvidia

echo "[Trigger]
Operation=Install
Operation=Upgrade
Operation=Remove
Type=Package
# Uncomment the installed NVIDIA package
Target=nvidia
#Target=nvidia-open
#Target=nvidia-lts
# If running a different kernel, modify below to match
Target=linux

[Action]
Description=Updating NVIDIA module in initcpio
Depends=mkinitcpio
When=PostTransaction
NeedsTargets
Exec=/bin/sh -c \'while read -r trg; do case $trg in linux*) exit 0; esac; done; /usr/bin/mkinitcpio -P\'" | sudo tee /etc/pacman.d/hooks/nvidia.hook
