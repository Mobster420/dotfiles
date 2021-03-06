#!/bin/bash

# Install of git and basic developtment tools
sudo pacman -S git base-devel

# Install of yay
git clone https://aur.archlinux.org/yay-git.git
chown -R moba:moba ./yay-git
cd yay-git
makepkg -si

# Installation of the needed tools
sudo pacman -S dunst picom i3 rofi
yay -S polybar 

# Setting up the dotfiles
git clone https://github.com/Mobster420/dotfiles
cd dotfiles
cp * ~/.config/

# Setting the permission for the bash files
chmod +x ~/.config/polybar/launch.sh
chmod +x ~/.config/scripts/brightness2.sh
chmod +x ~/.config/scripts/brightness.sh

echo "Setup is done!"
