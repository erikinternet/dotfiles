#xrandr --output ## --mode 1366x768 &
compton -f & 
xwallpaper --zoom /usr/share/wallpape/zoneout.png &
xrdb ~/.Xresources &
exec i3
