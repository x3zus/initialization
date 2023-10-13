#!/bin/bash
sudo apt-get update &&
sudo apt-get upgrade -y &&
sudo apt-get install screen iperf curl -y &&
sudo apt autoremove -y
