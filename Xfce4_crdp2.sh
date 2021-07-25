wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb --no-check-certificate
sudo apt update
echo "System is now updated"
sudo dpkg --install chrome-remote-desktop_current_amd64.deb
sudo apt install --fix-broken -y
sudo DEBIAN_FRONTEND=noninteractive
sudo apt install xfce4 -y
sudo bash -c 'echo "exec /etc/X11/Xsession /usr/bin/xfce4-session" > /etc/chrome-remote-desktop-session'
sudo apt install xscreensaver -y
sudo systemctl disable lightdm.service
echo " Visit https://remotedesktop.google.com/headless"
