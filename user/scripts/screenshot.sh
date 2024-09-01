#!/bin/sh

if ! pgrep -x "slurp" > /dev/null; then
   grim -g "$(slurp)G"
    
else
   exit
fi
