#!/bin/sh
mkdir ~/repos && cd ~/repos
git clone https://github.com/erikinternet/dotfiles
git clone https://github.com/erikinternet/st
git clone https://github.com/erikinternet/pfetch
git clone https://git.suckless.org/dmenu

cd st && doas make clean install && doas cp 'Perfect DOS VGA 437.ttf' /usr/share/fonts/
cd ../pfetch && doas make install 
cd ../dmenu && doas make clean install

