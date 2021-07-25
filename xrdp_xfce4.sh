#!/bin/bash
echo "UBUNTU 16.4 & UBUNTU 18.4"
echo "RUNNING SCRIPT"
cat /etc/os-release
echo -ne '#####                      (25%)\r'
sleep 1
sudo apt-get update -y
echo -ne '##########                 (50%)\r'
sleep 1
sudo apt-get install ufw -y
echo -ne '#############              (55%)\r'
sleep 1
sudo apt-get install xrdp -y
echo -ne '###############            (60%)\r'
sleep 1
sudo apt-get install xfce4 -y
echo -ne '###############            (65%)\r'
sleep 1
sudo apt-get install xfce4-terminal -y
echo -ne '##################         (70%)\r'
sleep 1
sudo sed -i.bak '/fi/a #xrdp multiple users configuration \n xfce-session \n' /etc/xrdp/startwm.sh
echo -ne '#####################      (75%)\r'
sleep 1
sudo ufw allow 3389/tcp
echo -ne '######################     (85%)\r'
sleep 1
echo -ne '#######################    (90%)\r'
sleep 1
echo -ne '########################   (95%)\r'
sleep 1
sudo /etc/init.d/xrdp restart
echo -ne '#######################    (100%)\r'
echo -ne '\n'
