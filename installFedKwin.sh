# sudo dnf install -y @base-x
# sudo dnf install -y nano
# sudo dnf install -y adobe-source-code-pro-fonts
# sudo dnf install -y plasma-desktop
# sudo dnf install -y plasma-workspace-devel
# sudo dnf install -y lxterminal
# sudo dnf install -y qt6-*
# sudo dnf install -y xrandr
# sudo dnf install -y xdotool
# sudo dnf install -y xprop
# sudo dnf install -y wmctrl
# sudo dnf install -y sddm
# sudo dnf install -y unity-gtk-module-common unity-gtk2-module unity-gtk3-module

# sudo systemctl enable sddm.service -f
# sudo systemctl set-default graphical.target 
# sudo systemctl enable sddm --force
# systemctl start sddm.service
# reboot

# APPLET WINDOW MENU
# https://github.com/psifidotos/applet-window-appmenu/blob/master/INSTALLATION.md
sudo dnf install make cmake extra-cmake-modules qt5-qtdeclarative-devel kf5-plasma-devel qt5-qtx11extras-devel gcc-c++ libSM-devel kf5-kconfigwidgets-devel kdecoration-devel kf5-kitemmodels-devel plasma-workspace-devel kf5-kwayland-devel 

# git clone https://github.com/Nineswiss/Momento-Linux
# cp ~/Momento-Linux/xinitrc ~/.xinitrc

# # IN .BASHRC
# export GTK_MODULES="unity-gtk-module"
# export SAL_USE_VCLPLUGIN=gtkpass
