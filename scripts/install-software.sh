#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Illegal number of parameters. Parameters should equal or greater than 1" >&2
    exit 1
fi

defaultUser=$1

# install dev dependencies
sudo apt update

sudo apt install -y zsh wget openssh-server git

## Install Microsoft DevTunnel
wget https://aka.ms/TunnelsCliDownload/linux-x64 -O devtunnel
sudo cp devtunnel  /usr/bin/
sudo cp devtunnel  /usr/sbin/
sudo rm devtunnel

# install nvm for Node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
