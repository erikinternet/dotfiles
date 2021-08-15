xrandr --output ## --mode 1366x768 &
# Compositor
picom -f & 
#wallpaper
xwallpaper --zoom ~/repos/dwm/wallpaper/entertaining-mrgod-purple.jpg &
mpv /usr/share/sounds/startup/win95.m4a &
[[ -f ~/.config/cuskey/.Xmodmap ]] && xmodmap ~/.config/cuskey/.Xmodmap
xmodmap -e 'clear lock'
#dwm
exec dwm
