#!/bin/bash
echo "Installing..."
apt install -y xinit
apt install -y x11-xserver-utils
apt install -y lxterminal
sudo apt install -y openbox
mkdir ~/.config
mkdir ~/.config/openbox
cp opbtheme/config/openbox ~/.config
cp -r opbtheme/config/Momento /usr/share/themes
mkdir ~/.config/gtk-3.0
cp gtk/settings.ini ~/.config/gtk-3.0
mkdir  ~/.config/picom
cp picom/picom.conf ~/.config/picom
