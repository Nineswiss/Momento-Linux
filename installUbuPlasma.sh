# sudo apt install -y xorg
# sudo apt install -y lxterminal
# sudo apt install -y xorg
# sudo apt install -y xdotool
# sudo apt install -y xprop
# sudo apt install -y wmctrl
# sudo apt install -y sddm
sudo apt install -y make cmake extra-cmake-modules qtdeclarative5-dev libkf5plasma-dev libqt5x11extras5-dev g++ libsm-dev libkf5configwidgets-dev libkdecorations2-dev libxcb-randr0-dev libkf5wayland-dev plasma-workspace-dev
cd ..
git clone https://github.com/psifidotos/applet-window-appmenu.git
cd applet-window-appmenu
sh install.sh

# sudo systemctl enable sddm.service -f
# sudo systemctl set-default graphical.target 
# sudo systemctl enable sddm --force
# systemctl start sddm.service
# reboot