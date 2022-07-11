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
sudo pacman -S --noconfirm inotify-tools
sudo pacman -S --noconfirm imagemagick
sudo pacman -S --noconfirm flatpak
sudo pacman -S --noconfirm firefox
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
mkdir $HOME/.cache
mkdir $HOME/.cache/thumbnails
mkdir $HOME/.cache/thumbnails/momento
mkdir $HOME/.themes
sudo chmod 755 /home/$USER/Documents /home/$USER/Downloads /home/$USER/Pictures /home/$USER/Pictures/Wallpaper /home/$USER/Music /home/$USER/Videos  /home/$USER/Desktop
cp wallpaper/bright.jpg /home/$USER/Pictures/Wallpaper
cp -r opbtheme/config/openbox /home/$USER/.config
sudo cp -r opbtheme/Momento /usr/share/themes
sudo cp -r gtk/Nordic-darker /usr/share/themes
sudo cp -r gtk/Nordic-darker $HOME/.themes
mkdir /home/$USER/.config/gtk-3.0
cp gtk/settings.ini /home/$USER/.config/gtk-3.0
mkdir /home/$USER/.config/picom
cp picom/picom.conf /home/$USER/.config/picom
mkdir /home/$USER/.config/momento
mkdir /home/$USER/.config/momento/scripts
sudo cp scripts/MThumbnailer.sh /home/$USER/.config/momento/scripts
sudo cp scripts/Applink.sh /home/$USER/.config/momento/scripts
sudo cp scripts/AppLinkUpdate.sh /home/$USER/.config/momento/scripts
sudo chmod +x /home/$USER/.config/momento/scripts/MThumbnailer.sh
sudo chmod +x /home/$USER/.config/momento/scripts/Applink.sh
sudo chmod +x /home/$USER/.config/momento/scripts/AppLinkUpdate.sh
touch /home/$USER/.config/momento/desktop.json
touch ~/.Xresources
echo "Xcursor.size: 16" >>  ~/.Xresources
# git clone https://aur.archlinux.org/snapd.git
# cd snapd
# makepkg -si
# sudo systemctl enable --now snapd.socket
# sudo ln -s /var/lib/snapd/snap/snap
/home/$USER/.config/momento/scripts/AppLinkUpdate.sh
echo "export QT_QPA_PLATFORMTHEME=gtk2" >> ~/.profile