#!/bin/bash
apt update && apt upgrade
curl -sL https://deb.nodesource.com/setup_21.x | sudo -E bash -
sudo apt-get install -y nodejs
apt install git
git clone https://github.com/juice-shop/juice-shop.git --depth 1
cd juice-shop
npm install
npm start


