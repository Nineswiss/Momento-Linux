sudo dnf install -y @base-x
sudo dnf install -y gnome-shell
sudo dnf install -y adobe-source-code-pro-fonts
sudo dnf install -y lxterminal
sudo dnf install -y bamf-daemon.x86_64
sudo dnf install -y git
sudo dnf install xdotool
sudo dnf install -y gnome-shell-extension-user-theme
systemctl enable gdm.service
sudo ln -svf /usr/lib/systemd/system/graphical.target /etc/systemd/system/default.target
cd Momento-Linux/mutter
sudo dnf install -y mutter-42.1-2.fc36.x86_64.rpm
mkdir -p ~/.config/momento/
sudo cp ~/Momento-Linux/wallpaper/silk.png /usr/share/backgrounds/
mkdir ~/.config/autostart
cp ~/Momento-Linux/start
cp ~/Momento-Linux/startup/lxterminal.desktop ~/.config/autostart/
gsettings set org.gnome.shell welcome-dialog-last-shown-version 8888888888888888888888
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/silk.png
sleep 4 &&
reboot
# mkdir -p ~/.local/share/gnome-shell/extensions