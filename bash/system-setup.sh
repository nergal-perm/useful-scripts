#! /bin/bash

# Creating Development directory
mkdir ~/Dev
cd ~/Dev

# installing geeknote
sudo apt-get -y install python-setuptools
git clone git://github.com/VitaliyRodnenko/geeknote.git
cd geeknote
sudo python setup.py install

# installing rescuetime
cd ~/Downloads
sudo apt-get -y install curl
curl -O https://www.rescuetime.com/installers/rescuetime_current_i386.deb
sudo dpkg -i rescuetime_current_i386
sudo apt-get -y -f install
mkdir ~/.config/autostart


