#!/bin/sh

sudo reflector --country Russia --latest 10 --sort rate --protocol http --protocol https --save /etc/pacman.d/mirrorlist
