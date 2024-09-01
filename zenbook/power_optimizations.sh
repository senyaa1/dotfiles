#!/bin/sh

echo 'vm.dirty_writeback_centisecs = 6000' | sudo tee /etc/sysctl.d/dirty.conf

echo 'kernel.nmi_watchdog = 0' | sudo tee /etc/sysctl.d/disable_watchdog.conf

echo "ACTION==\"add\", SUBSYSTEM==\"net\", KERNEL==\"wl*\", RUN+=\"/usr/bin/iw dev $name set power_save on\"" | sudo tee /etc/udev/rules.d/81-wifi-powersave.rules


sudo pacman -S acpid

sudo systemctl enable --now acpid.service
