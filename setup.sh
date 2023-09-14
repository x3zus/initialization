#!/bin/bash
sudo apt-get update &&
sudo apt-get upgrade -y &&
sudo apt-get install screen iperf -y &&
sudo apt autoremove -y
