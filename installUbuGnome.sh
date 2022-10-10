sudo apt install -y gnome-shell
sudo apt install -y libcanberra-gtk-module
sudo apt install -y firefox
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install -y plocate
# EXTENSIONS
gsettings set org.gnome.shell disable-user-extensions false
gsettings set org.gnome.mutter center-new-windows true

# FIX WINDOW STEALING
sudo mkdir -p /usr/share/gnome-shell/extensions/
git clone https://github.com/Nineswiss/gnome-shell-extension-stealmyfocus.git
mv gnome-shell-extension-stealmyfocus/ focus-my-window@varianto25.com
cp focus-my-window@varianto25.com/ /usr/share/gnome-shell/extensions
gnome-extensions enable focus-my-window@varianto25.com
cd ~/Downloads

#FILDEM
https://github.com/gonzaarcr/Fildem
wget https://github.com/gonzaarcr/Fildem/releases/download/0.6.7/fildem_0.6.7_all.deb

# GNOME SETTINGS
gsettings set org.gnome.desktop.wm.preferences button-layout ":minimize,maximize,close"

# QT
sudo apt install clang
sudo apt install libclang-dev
sudo apt install gcc
sudo apt install cmake
sudp apt install -y qt6-l10n-tools
sudo apt install -y qt6-documentation-tools
sudo apt install -y qml6-module*
sudo apt install -y qt6-declarative-dev
# sudo apt install -y qml6-module-qtqml
# sudo apt-get -y install qml6-module-qtqml-workerscript
# sudo apt install -y qml6-module-qtquick
# sudo apt install -y qml6-module-qtquick-window

# USER THEMES
~/.themes/

# qt6-tools-private-dev
# linguist-qt6
# /usr/lib/qt6/bin