#!/bin/bash
echo "Installing..."
git clone https://github.com/Nineswiss/Momento-Linux.git
apt install -y xinit
apt install -y x11-xserver-utils
apt install -y lxterminal
sudo apt install -y openbox
mkdir ~/.config
mkdir ~/.config/openbox
cp Momento-Linux/opbtheme/config/openbox ~/.config
cp -r Momento-Linux/opbtheme/config/Momento /usr/share/themes
mkdir ~/.config/gtk-3.0
cp Momento-Linux/gtk/settings.ini ~/.config/gtk-3.0
mkdir  ~/.config/picom
cp Momento-Linux/picom/picom.conf ~/.config/picom
