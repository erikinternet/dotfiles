#!/bin/sh
mkdir ~/repos && cd ~/repos
mv ~/yay-bin ~/repos
cp ~/dotfiles ~/repos/ -r
git clone https://github.com/erikinternet/st
git clone https://github.com/erikinternet/pfetch
git clone https://gitlab.com/dwt1/surf-distrotube
git clone https://git.suckless.org/dmenu

sudo vim /etc/doas.conf
cd st && doas make clean install && doas cp 'Perfect DOS VGA 437.ttf' /usr/share/fonts/
cd ../pfetch && doas make install 
cd ../dmenu && doas make clean install
cd ../surf-distrotube && doas make clean install

# dotfiles
cd ../dotfiles && pwd
rm -rf ~/.config && cp .config/ ~ -r
cp .Xresources .xinitrc .vimrc ~
doas mkdir /usr/share/wallpape/ && wget https://w.wallhaven.cc/full/1j/wallhaven-1j7xmv.png && doas mv wallhaven-1j7xmv.png /usr/share/wallpape/wallarch.png
chsh -s /usr/bin/fish
cd ~ && rm -rf ~/dotfiles
echo "Finaly done, now log out!"
logout
