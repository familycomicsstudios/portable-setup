#!/bin/bash

# Install basic packages & managers
sudo apt install snap flatpak wget git

# Add Flatpak repo
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Google Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -f -y && sudo dpkg -i ./google-chrome-stable_current_amd64.deb
rm -f ./google-chrome-stable_current_amd64.deb

# Install Tor and Onionshare
sudo apt install tor onionshare

# Install games
sudo apt install chocolate-doom retroarch 
sudo snap install gzdoom turbowarp-desktop

# Install DOOM Wads
git clone https://github.com/Akbar30Bill/DOOM_wads.git
sudo cp DOOM_wads/*.wad /usr/share/games/doom
cp DOOM_wads/*.wad ~/snap/gzdoom/common/.config

# Install Steam
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam.deb
sudo apt install -f -y
rm -f steam.deb


