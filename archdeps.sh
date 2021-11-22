#!/bin/sh
#Faster mirrors
sudo pacman -Sy pacman-contrib reflector rsync
#If you dont live in the us change it
sudo reflector -a 10 -c us -f 5 --sort rate --save /etc/pacman.d/mirrorlist
cat /etc/pacman.d/mirrorlist

#Applications
git clone https://aur.archlinux.org/yay-bin.git ~/yay-bin && cd ~/yay-bin && makepkg -si
yay -Sy doas xorg-server xorg-xinit base-devel htop libx11 libxft libxinerama vim pacman-contrib reflector i3 fish keepassxc rsync dolphin-emu mupen64plus minizip xwallpaper compton xterm gst-libav gst-plugins-good gstreamer gcr webkit2gtk acpi xorg-xrandr #gzdoom
