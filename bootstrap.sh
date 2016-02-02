#!/usr/bin/env bash

sudo apt-get remove -y nodejs

curl --silent --location https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update
sudo apt-get install -y ruby2.2 ruby2.2-dev git nodejs
wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

sudo rm -rf /vagrant/voting-server/node_modules
sudo cp /vagrant ~/redux -r
cd ~/redux
sudo chown -R `whoami` ./
sudo npm install -g npm@"~3.3.10"
npm install
