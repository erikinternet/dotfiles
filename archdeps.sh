#!/bin/sh
#Faster mirrors
sudo pacman -Sy pacman-contrib reflector rsync
#If you dont live in the us change it
sudo reflector -a 10 -c us -f 5 --sort rate --save /etc/pacman.d/mirrorlist

#Applications
git clone https://aur.archlinux.org/yay-bin.git ~/yay-bin && cd yay-bin && makepkg -si
yay -Sy doas xorg-server xorg-xinit base-devel libx11 libxft libxinerama vim pacman-contrib reflector i3 fish rsync gzdoom dolphin-emu mupen64plus xwallpaper compton xterm
