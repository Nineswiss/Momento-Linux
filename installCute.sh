mkdir -p ~/Downloads/cutefish
cd ~/Downloads/cutefish

git clone https://github.com/cutefishos/libcutefish.git
cd libcutefish
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/fishui
cd fishui
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/kwin-plugins
cd kwin-plugins
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/launcher
cd launcher
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/qt-plugins
cd qt-plugins
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/wallpapers
cd wallpapers
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
sudo apt-get install ./*.deb -y

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/dock
cd dock
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/filemanager
cd filemanager
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/terminal.git
cd terminal
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/settings
cd settings
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/statusbar
cd statusbar
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
git clone https://github.com/cutefishos/core
cd core
dpkg-buildpackage -uc -us -b

cd ~/Downloads/cutefish
sudo apt-get install ./*.deb -y