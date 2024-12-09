#!/bin/bash
sudo apt install snap flatpak wget git
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i ./google-chrome-stable_current_amd64.deb
sudo apt install tor onionshare
sudo apt install chocolate-doom retroarch 
sudo snap install gzdoom turbowarp-desktop
git clone https://github.com/Akbar30Bill/DOOM_wads.git
cp DOOM_wads /usr/share/games/doom ~/snap/gzdoom/common/.config
