#!/bin/sh
git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
yay -Sy doas xorg-server xorg-xinit base-devel libx11 libxft libxinerama vim pacman-contrib reflector i3 fish rsync gzdoom

cat /etc/pacman.d/mirrorlist
reflector -a 10 -c us -f 5 --sort rate --save /etc/pacman.d/mirrorlist
cat /etc/pacman.d/mirrorlist
