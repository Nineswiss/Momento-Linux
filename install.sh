#!/bin/bash
echo "Installing..."
apt install -y xinit
apt install -y x11-xserver-utils
apt install -y lxterminal
apt install -y openbox
sudo mkdir $HOME/.config
sudo mkdir $HOME/.config/openbox
sudo cp opbtheme/config/openbox $HOME/.config
sudo cp -r opbtheme/config/Momento /usr/share/themes
sudo mkdir $HOME/.config/gtk-3.0
sudo cp gtk/settings.ini $HOME/.config/gtk-3.0
sudo mkdir $HOME/.config/picom
sudo cp picom/picom.conf $HOME/.config/picom
