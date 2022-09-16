sudo dnf install -y @base-x
sudo dnf install -y gnome-shell
sudo dnf install -y adobe-source-code-pro-fonts
sudo dnf install -y lxterminal
sudo dnf install -y bamf-daemon
sudo dnf install -y git
sudo dnf install -y xdotool
sudo dnf install -y gnome-shell-extension-user-theme
sudo dnf install -y xrandr
systemctl enable gdm.service
sudo ln -svf /usr/lib/systemd/system/graphical.target /etc/systemd/system/default.target
cd ~/
git clone https://github.com/yilozt/mutter-rounded
cd ./mutter-rounded/fedora
./package.sh &
CPU="$( uname -m )"
if [ $CPU = 'aarch64' ] ;then
cd ~/rpmbuild/RPMS/aarch64/
else
cd ~/rpmbuild/RPMS/x86_64/
fi
sudo dnf upgrade mutter
sudo rpm --reinstall mutter-42.*
mkdir -p ~/.config/momento/
sudo cp ~/Momento-Linux/wallpaper/silk.png /usr/share/backgrounds/
mkdir ~/.config/autostart
cp ~/Momento-Linux/start
cp ~/Momento-Linux/startup/lxterminal.desktop ~/.config/autostart/
cp -r ~/Momento-Linux/scripts ~/.config/momento
gsettings set org.gnome.shell welcome-dialog-last-shown-version 8888888888888888888888
gsettings set org.gnome.desktop.background picture-uri file:///usr/share/backgrounds/silk.png
gsettings set org.gnome.desktop.background picture-uri-dark file:///usr/share/backgrounds/silk.png
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
sleep 4 &&
reboot
# mkdir -p ~/.local/share/gnome-shell/extensions