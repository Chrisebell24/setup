#!/bin/bash

# Wifi Settings
sudo -s
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
chmod 644 /etc/resolv.conf
exit

# General
sudo apt-get update

# Install SSH & Firewall Settings
sudo apt-get install openssh-server && sudo systemctl enable ssh && sudo systemctl start ssh && sudo ufw allow 22 && sudo ufw allow 4000 && sudo ufw allow 8888

# Install No Machine
sudo apt-get install alien && wget https://download.nomachine.com/download/6.11/Raspberry/nomachine_6.11.2_1_armhf.deb && sudo dpkg -i nomachine_6.11.2_1_armhf.deb

# Install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg2 && curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - && sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && sudo apt install docker-ce && sudo systemctl status docker
