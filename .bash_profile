#!/bin/sh

# Bash profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH="$PATH:$HOME/scripts/"

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="qutebrowser"
export READER="zathura"

export XAUTHORITY="$XDG_RUNTIME_DIR/.Xauthority"
export LESSHISTFILE="-"
export WGETRC="$HOME/.config/.wgetrc"

#startx on login

if [ "$(tty)" = "/dev/tty1" ]; then
 	pgrep -x dwm || exec startx ~/.config/x/.xinitrc
fi

