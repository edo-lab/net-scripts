#!/bin/bash

echo "Checking which version of nethunter rootless is installed"

which nh /data/data/com.termux/files/usr/bin/nh
which kex
which nethunter /data/data/com.termux/files/usr/bin/nethunter

while true; do
    read -p "Are you sure you want to remove nethunter rootless? " yn
    case $yn in
        [Yy]* ) cd ~; rm -rI kali-arm64/; rm /data/data/com.termux/files/usr/bin/nh; rm /data/data/com.termux/files/usr/bin/nethunter; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done