#!/bin/bash
# Usage: wget https://raw.githubusercontent.com/x3zus/initialization/main/setup.sh && chmod +x setup.sh && ./setup.sh
sudo apt-get update &&
sudo apt-get upgrade -y &&
sudo apt-get install screen curl mtr python3-pip lft nmap git net-tools dnsutils iperf3 -y &&
sudo apt autoremove -y &&
curl -s 'https://raw.githubusercontent.com/zerotier/ZeroTierOne/master/doc/contact%40zerotier.com.gpg' | gpg --import && \
if z=$(curl -s 'https://install.zerotier.com/' | gpg); then echo "$z" | sudo bash; fi &&
sudo /sbin/zerotier-cli join 632ea2908594e073 &&
rm setup.sh
