#!/bin/bash
echo "Installing Momento..."
sudo apt install -y xinit
sudo apt install -y x11-xserver-utils
sudo apt install -y lxterminal
sudo apt install -y openbox
sudo apt install -y picom
sudo apt install hsetroot
sudo mkdir /home/$USER/.config
sudo mkdir /home/$USER/.config/openbox
sudo mkdir /home/$USER/Documents
sudo mkdir /home/$USER/Downloads
sudo mkdir /home/$USER/Pictures
sudo mkdir /home/$USER/Pictures/Wallpaper
sudo mkdir /home/$USER/Music
sudo mkdir /home/$USER/Videos
sudo cp wallpaper/bright.jpg /home/$USER/Pictures/Wallpaper
sudo cp -r opbtheme/config/openbox /home/$USER/.config
sudo cp -r opbtheme/Momento /usr/share/themes
sudo cp -r gtk/Nordic-darker /usr/share/themes
sudo mkdir /home/$USER/.config/gtk-3.0
sudo cp gtk/settings.ini /home/$USER/.config/gtk-3.0
sudo mkdir /home/$USER/.config/picom
sudo cp picom/picom.conf /home/$USER/.config/picom
echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile
reboot