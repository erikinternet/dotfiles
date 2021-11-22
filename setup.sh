#!/bin/sh
mkdir ~/repos && cd ~/repos
cp ~/dotfiles ~/repos/ -r
git clone https://github.com/erikinternet/st
git clone https://github.com/erikinternet/pfetch
git clone https://git.suckless.org/dmenu

sudo vim /etc/doas.conf
cd st && doas make clean install && doas cp 'Perfect DOS VGA 437.ttf' /usr/share/fonts/
cd ../pfetch && doas make install 
cd ../dmenu && doas make clean install

# dotfiles
cd ../dotfiles && pwd
rm -rf ~/.config && cp .config/ ~
