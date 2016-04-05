#! /bin/bash

# installing rescuetime
cd ~/Downloads
sudo apt-get -y install curl
curl -O https://www.rescuetime.com/installers/rescuetime_current_i386.deb
sudo dpkg -i rescuetime_current_i386.deb
sudo apt-get -y -f install
mkdir ~/.config/autostart
curl https://raw.githubusercontent.com/nergal-perm/useful-scripts/master/bash/rescuetime.desktop >> ~/.config/autostart/rescuetime.desktop

