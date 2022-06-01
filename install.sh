#!/bin/bash
echo "Installing Momento..."
sudo apt install -y xinit
sudo apt install -y x11-xserver-utils
sudo apt install -y lxterminal
sudo apt install -y openbox
sudo mkdir home/$USER/.config
sudo mkdir home/$USER/.config/openbox
sudo cp -r opbtheme/config/openbox home/$USER/.config
sudo cp -r opbtheme/Momento /usr/share/themes
sudo mkdir home/$USER/.config/gtk-3.0
sudo cp gtk/settings.ini home/$USER/.config/gtk-3.0
sudo mkdir home/$USER/.config/picom
sudo cp picom/picom.conf home/$USER/.config/picom
