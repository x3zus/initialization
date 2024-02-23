#!/bin/bash
# Usage: wget https://raw.githubusercontent.com/x3zus/initialization/main/setup.sh && chmod +x setup.sh && ./setup.sh
sudo apt-get update &&
sudo apt-get upgrade -y &&
sudo apt-get install screen iperf3 curl mtr python-pip lft nmap git dnsutils -y &&
sudo apt autoremove -y &&
curl -s 'https://raw.githubusercontent.com/zerotier/ZeroTierOne/master/doc/contact%40zerotier.com.gpg' | gpg --import && \
if z=$(curl -s 'https://install.zerotier.com/' | gpg); then echo "$z" | sudo bash; fi
zerotier-cli join 632ea2908594e073
rm setup.sh
