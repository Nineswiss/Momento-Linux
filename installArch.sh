#!/bin/bash
echo "Installing Momento..."
sudo pacman -S --noconfirm xorg-xinit
sudo pacman -S --noconfirm xorg-server
sudo pacman -S --noconfirm xorg-fonts-misc
sudo pacman -S --noconfirm lxterminal
sudo pacman -S --noconfirm openbox
sudo pacman -S --noconfirm picom
sudo pacman -S --noconfirm hsetroot
sudo pacman -S --noconfirm polkit
sudo pacman -S --noconfirm xdotool
sudo pacman -S --noconfirm handlr
cp xinit/xinitrc ~/.xinitrc
mkdir /home/$USER/.config
mkdir /home/$USER/.config/openbox
mkdir /home/$USER/Documents
mkdir /home/$USER/Downloads
mkdir /home/$USER/Pictures
mkdir /home/$USER/Pictures/Wallpaper
mkdir /home/$USER/Music
mkdir /home/$USER/Videos
mkdir /home/$USER/Desktop
mkdir /home/$USER/Applications
sudo chattr +i /home/$USER/Documents /home/$USER/Pictures /home/$USER/Music /home/$USER/Videos /home/$USER/Desktop /home/$USER/Downloads /home/$USER/Applications
sudo chmod 777 /home/$USER/Documents /home/$USER/Downloads /home/$USER/Pictures /home/$USER/Pictures/Wallpaper /home/$USER/Music /home/$USER/Videos  /home/$USER/Desktop
cp wallpaper/bright.jpg /home/$USER/Pictures/Wallpaper
cp -r opbtheme/config/openbox /home/$USER/.config
sudo cp -r opbtheme/Momento /usr/share/themes
sudo cp -r gtk/Nordic-darker /usr/share/themes
mkdir /home/$USER/.config/gtk-3.0
cp gtk/settings.ini /home/$USER/.config/gtk-3.0
mkdir /home/$USER/.config/picom
cp picom/picom.conf /home/$USER/.config/picom
mkdir /home/$USER/.config/momento
touch /home/$USER/.config/momento/desktop.json
git clone https://aur.archlinux.org/snapd.git
cd snapd
makepkg -si
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap
echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile