#! /bin/bash

# Устанавливаем node version manager
sudo apt-get update
sudo apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.26.1/install.sh | sudo NVM_DIR=/opt/nvm bash
source ~/.profile

# Устанавливаем последнюю версию nodejs
nvm install stable
echo "nvm use stable" >> ~/.bashrc
source ~/.bashrc

# Устанавливаем type script definitions
npm install -g tsd 