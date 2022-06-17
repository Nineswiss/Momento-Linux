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
mkdir /home/$USER/.config
mkdir /home/$USER/.config/openbox
mkdir /home/$USER/Documents
mkdir /home/$USER/Downloads
mkdir /home/$USER/Pictures
mkdir /home/$USER/Pictures/Wallpaper
mkdir /home/$USER/Music
mkdir /home/$USER/Videos
mkdir /home/$USER/Desktop
sudo chmod 777 /home/$USER/Documents /home/$USER/Downloads /home/$USER/Pictures /home/$USER/Pictures/Wallpaper /home/$USER/Music /home/$USER/Videos  /home/$USER/Desktop
cp wallpaper/bright.jpg /home/$USER/Pictures/Wallpaper
cp -r opbtheme/config/openbox /home/$USER/.config
cp -r opbtheme/Momento /usr/share/themes
cp -r gtk/Nordic-darker /usr/share/themes
mkdir /home/$USER/.config/gtk-3.0
cp gtk/settings.ini /home/$USER/.config/gtk-3.0
mkdir /home/$USER/.config/picom
cp picom/picom.conf /home/$USER/.config/picom
mkdir /home/$USER/.config/momento
touch /home/$USER/.config/momento/desktop.json
sudo chmod 777 /home/$USER/.config/momento/desktop.json
echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile
sudo chmod 777 /home/$USER/Music /home/$USER/Pictures/ /home/$USER/Videos/ /home/$USER/Documents/ /home/$USER/.config
reboot