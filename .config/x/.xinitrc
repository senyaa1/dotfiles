xrdb ~/.config/x/.Xresources
xrandr -s 3840x2160 
# xwallpaper --stretch ~/wlprs/current_wallpaper
wal -i ~/wlprs/current_wallpaper
dwmblocks &
while true; do
	dwm >/dev/null 2>&1
done
