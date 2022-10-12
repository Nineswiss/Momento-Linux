# sudo apt install -y xorg
# sudo apt install -y lxterminal
# sudo apt install -y xdotool
# sudo apt install -y xprop
# sudo apt install -y wmctrl
# sudo apt install -y sddm
sudo apt install -y plocate
sudo apt install unzip

# sudo apt install spice-vdagent spice-webdavd
sudo apt install -y make cmake extra-cmake-modules qtdeclarative5-dev libkf5plasma-dev libqt5x11extras5-dev g++ libsm-dev libkf5configwidgets-dev libkdecorations2-dev libxcb-randr0-dev libkf5wayland-dev plasma-workspace-dev
sudo apt install -y qtcreator
# sudo apt install -y qt6-tools-dev
# sudo apt install -y qt6-tools-dev-tools
# sudo apt install -y qt6-declarative-dev
# sudo apt install -y qt6-declarative-private-dev
# sudo apt install -y qt6-base-private-dev
# sudo apt install -y qml6-module-qtquick
# sudo apt install -y qml6-module-qtquick-window
cd
git clone https://github.com/psifidotos/applet-window-appmenu.git
cd applet-window-appmenu
sh install.sh
cd
git clone https://github.com/psifidotos/applet-window-title
cd applet-window-title
kpackagetool5 -i .
cd
# FONT INTER
wget https://github.com/rsms/inter/releases/download/v3.19/Inter-3.19.zip

# sudo systemctl enable sddm.service -f
# sudo systemctl set-default graphical.target 
# sudo systemctl enable sddm --forcec
# systemctl start sddm.service
# reboot