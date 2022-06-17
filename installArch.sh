#!/bin/bash
echo "Installing Momento..."
sudo pacman -S xorg
sudo pacman -S -y xorg-xinit
sudo pacman -S -y xorg-server
sudo pacman -S xorg-fonts-misc
sudo pacman -S -y lxterminal
sudo pacman -S -y openbox
sudo pacman -S -y picom
sudo pacman -S hsetroot
cp /etc/X11/xinit/xinitrc ~/.xinitrc
echo "exec openbox-session &" >> ~/.xinitrc
sudo mkdir /home/$USER/.config
sudo mkdir /home/$USER/.config/openbox
sudo mkdir /home/$USER/Documents
sudo mkdir /home/$USER/Downloads
sudo mkdir /home/$USER/Pictures
sudo mkdir /home/$USER/Pictures/Wallpaper
sudo mkdir /home/$USER/Music
sudo mkdir /home/$USER/Videos
sudo mkdir /home/$USER/Desktop
sudo chmod 777 /home/$USER/Documents /home/$USER/Downloads /home/$USER/Pictures /home/$USER/Pictures/Wallpaper /home/$USER/Music /home/$USER/Videos  /home/$USER/Desktop
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
echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile
sudo chmod 777 /home/$USER/Music /home/$USER/Pictures/ /home/$USER/Videos/ /home/$USER/Documents/ /home/$USER/.config
reboot