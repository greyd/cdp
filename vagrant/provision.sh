#!/usr/bin/env bash
# Install useful utils
sudo apt-get update
sudo apt-get install htop curl git python-software-properties python g++ make -y

# Install Node.js
sudo add-apt-repository ppa:chris-lea/node.js -y
sudo apt-get update
sudo apt-get install nodejs -y
echo prefix = ~/.node >> ~/.npmrc
echo "export PATH=$PATH:$HOME/.node/bin" >> ~/.bashrc
source ~/.bashrc

# Install mongoDb
sudo apt-get insdtall mongodb-server mongodb-clients -y

# Install global node modules
npm i -g supervisor

# Install local npm modules
cd /vagrant
npm i