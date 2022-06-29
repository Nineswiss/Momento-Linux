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
touch /home/$USER/Documents/.lock
sudo chattr +i /home/$USER/Documents/.lock
mkdir /home/$USER/Downloads
touch /home/$USER/Downloads/.lock
sudo chattr +i /home/$USER/Downloads/.lock
mkdir /home/$USER/Pictures
touch /home/$USER/Pictures/.lock
sudo chattr +i /home/$USER/Pictures/.lock
mkdir /home/$USER/Pictures/Wallpaper
mkdir /home/$USER/Music
touch /home/$USER/Music/.lock
sudo chattr +i /home/$USER/Music/.lock
mkdir /home/$USER/Videos
touch /home/$USER/Videos/.lock
sudo chattr +i /home/$USER/Videos/.lock
mkdir /home/$USER/Desktop
touch /home/$USER/Desktop/.lock
sudo chattr +i /home/$USER/Desktop/.lock
mkdir /home/$USER/Applications
touch /home/$USER/Applications/.lock
sudo chattr +i /home/$USER/Applications/.lock
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