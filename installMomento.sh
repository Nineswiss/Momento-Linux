echo "Installing Momento..."
sudo pacman -Sy --noconfirm
sudo pacman -S --noconfirm extra/libdrm
sudo pacman -S --noconfirm xorg
sudo pacman -S --noconfirm xorg-xinit
sudo pacman -S --noconfirm lxterminal
sudo pacman -S --noconfirm xrandr
sudo pacman -S --noconfirm make
# NEED THESE CHECK ARM OR x86
linux headers
