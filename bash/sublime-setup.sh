#! /bin/bash

cd ~/Загрузки

# installing sublime-text
wget -q https://download.sublimetext.com/sublime-text_build-3103_i386.deb -O -
sudo dpkg -i sublime-text_build-3103_i386.deb
sudo apt-get -y -f install