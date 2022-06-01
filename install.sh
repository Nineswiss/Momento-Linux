#!/bin/bash
echo "Installing Momento..."
apt install -y xinit
apt install -y x11-xserver-utils
apt install -y lxterminal
apt install -y openbox
mkdir home/$USER/.config
mkdir home/$USER/.config/openbox
cp opbtheme/config/openbox home/$USER/.config
cp -r opbtheme/Momento /usr/share/themes
mkdir home/$USER/.config/gtk-3.0
cp gtk/settings.ini home/$USER/.config/gtk-3.0
mkdir home/$USER/.config/picom
cp picom/picom.conf home/$USER/.config/picom
