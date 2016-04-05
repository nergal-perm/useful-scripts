#! /bin/bash

# installing prerequisite packages
## removing trailing partials for apt
sudo rm -rf /var/lib/apt/lists/partial/*
echo "Updating packages list..."
sudo apt-get -qq update
echo "Updating done, installing prerequisites (build-essential & libssl-dev)"
sudo apt-get -y -qq install build-essential libssl-dev
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
source ~/.profile
nvm install stable
nvm use stable
