#!/bin/bash
# Usage: wget https://raw.githubusercontent.com/x3zus/initialization/main/setup.sh && chmod +x setup.sh && ./setup.sh
sudo apt-get update &&
sudo apt-get upgrade -y &&
sudo apt-get install screen iperf curl mtr -y &&
sudo apt autoremove -y
rm setup.sh
