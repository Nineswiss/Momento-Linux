#!/bin/bash
echo "Installing..."
apt install -y xinit
apt install -y x11-xserver-utils
apt install -y lxterminal
apt install -y openbox
sudo mkdir ~/.config
sudo mkdir ~/.config/openbox
sudo cp opbtheme/config/openbox ~/.config
sudo cp -r opbtheme/config/Momento /usr/share/themes
sudo mkdir ~/.config/gtk-3.0
sudo cp gtk/settings.ini ~/.config/gtk-3.0
sudo mkdir  ~/.config/picom
sudo cp picom/picom.conf ~/.config/picom
