#!/bin/bash
# Usage: wget https://raw.githubusercontent.com/x3zus/initialization/main/setup.sh && chmod +x setup.sh && ./setup.sh
sudo apt-get update &&
sudo apt-get upgrade -y &&
sudo apt-get install screen iperf3 curl mtr python-pip lft nmap -y &&
sudo apt autoremove -y &&
rm setup.sh
