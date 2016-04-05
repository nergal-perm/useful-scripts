#! /bin/bash

# installing prerequisite packages
sudo apt-get -y -qq install build-essential libssl-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
source ~/.profile
nvm install stable
nvm use stable

# installing required node_modules
npm install -g electron-prebuilt