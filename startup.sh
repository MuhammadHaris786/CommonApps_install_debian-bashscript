#!/bin/bash

#Qbittorrent
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt install qbittorrent
#Snapd
sudo rm /etc/apt/preferences.d/nosnap.pref
sudo apt install snapd
sudo snap install snapd
#SnapStore
sudo snap install snap-store
#Brave
sudo snap install brave
#For installing VS-Code
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt install code # or code-insiders
#VLC
sudo snap install vlc
#Wifi Hotspot
sudo add-apt-repository ppa:lakinduakash/lwh
sudo apt install linux-wifi-hotspot

