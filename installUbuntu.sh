sudo apt install -y xorg
sudo apt install -y gnome-shell
git clone https://github.com/Nineswiss/Momento-Linux ~/Documents
sudo cp ~/Documents/Momento-Linux/wallpaper/silk.png /usr/share/backgrounds/
git clone https://github.com/Nineswiss/no-overview-fthx ~/no-overview@fthx
sudo mv ~/no-overview@fthx/ /usr/share/gnome-shell/extensions/
sudo mv ~/hide-panel-lite@fthx /usr/share/gnome-shell/extensions/
git clone https://github.com/Nineswiss/hide-panel-lite ~/hide-panel-lite@fthx

# APP MENU
sudo apt install make cmake extra-cmake-modules qtdeclarative5-dev libkf5plasma-dev libqt5x11extras5-dev g++ libsm-dev libkf5configwidgets-dev libkdecorations2-dev libxcb-randr0-dev libkf5wayland-dev plasma-workspace-dev
# GNOME
gsettings set org.gnome.shell welcome-dialog-last-shown-version 8888888888888888888888
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"
gsettings set org.gnome.desktop.interface enable-hot-corners false
gsettings set org.gnome.mutter overlay-key ''
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu "[]"
gsettings set org.gnome.shell.keybindings toggle-overview "['']"
gsettings set org.gnome.shell.keybindings toggle-application-view "['']"
gnome-extensions enable no-overview@fthx
gnome-extensions enable hide-panel-lite@fthx

# QT
sudo apt install -y qt6-declarative-dev

#GLOBAL CONFIG
/home/adam/.config/kdeglobals