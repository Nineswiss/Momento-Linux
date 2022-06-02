#!/bin/bash
echo "Installing Momento..."
sudo apt install -y xinit
sudo apt install -y x11-xserver-utils
sudo apt install -y lxterminal
sudo apt install -y openbox
sudo apt install -y picom
sudo apt install hsetroot
sudo apt install flatpak
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
sudo mkdir /home/$USER/.config/momento
sudo touch /home/$USER/.config/momento/desktop.json
sudo chmod 777 /home/$USER/.config/momento/desktop.json
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile
sudo chmod 777 /home/$USER/Music /home/$USER/Pictures/ /home/$USER/Videos/ /home/$USER/Documents/ /home/$USER/.config
reboot