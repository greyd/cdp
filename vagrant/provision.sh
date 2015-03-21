#!/usr/bin/env bash
# Install useful utils
sudo apt-get update
sudo apt-get install htop curl git python-software-properties python g++ make -y

# Install Node.js
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo apt-get update
sudo apt-get install nodejs -y
echo prefix = ~/.node >> ~/.npmrc
export PATH="$PATH:$HOME/.node/bin"

# Install mongoDb
Sudo apt-get insdtall mongodb-server mongodb-clients -y