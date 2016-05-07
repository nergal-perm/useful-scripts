#! /bin/bash

cd ~/Загрузки

# installing sublime-text
wget -q https://download.sublimetext.com/sublime-text_build-3103_i386.deb
sudo dpkg -i sublime-text_build-3103_i386.deb
sudo apt-get -y -f install

git clone https://github.com/jonschlinkert/sublime-monokai-extended ~/.config/sublime-text-3/Packages/sublime-monokai-extended
git clone https://github.com/jonschlinkert/sublime-markdown-extended ~/.config/sublime-text-3/Packages/sublime-markdown-extended