#!/bin/bash
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb --no-check-certificate
sudo apt update
echo "system is now updated"
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken
sudo apt install --assume-yes gnome desktop-base
echo "gnome-session" > ~/.chrome-remote-desktop-session
sudo apt install --assume-yes xscreensaver
sudo systemctl disable lightdm.service
echo "export CHROME_REMOTE_DESKTOP_DEFAULT_DESKTOP_SIZES=1280x720,1368x786" \
    >> ~/.profile
sudo systemctl restart chrome-remote-desktop
sudo passwd $(whoami)    
echo "visit https://remotedesktop.google.com/headless"
