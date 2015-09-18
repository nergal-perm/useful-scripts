#! /bin/bash

# Creating Development directory
mkdir ~/Dev
cd ~/Dev

# installing geeknote
sudo apt-get -y install python-setuptools
git clone git://github.com/VitaliyRodnenko/geeknote.git
cd geeknote
sudo python setup.py install
echo "alias g=geeknote" >> ~/.bash_aliases

# installing rescuetime
cd ~/Downloads
sudo apt-get -y install curl
curl -O https://www.rescuetime.com/installers/rescuetime_current_i386.deb
sudo dpkg -i rescuetime_current_i386.deb
sudo apt-get -y -f install
mkdir ~/.config/autostart
curl https://raw.githubusercontent.com/nergal-perm/useful-scripts/master/bash/rescuetime.desktop >> ~/.config/autostart/rescuetime.desktop

# installing Dropbox (change version to an appropriate one
sudo apt-get -y install python-gpgme
curl -OL https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_i386.deb
sudo dpkg -i dropbox_2015.02.12_i386.deb
dropbox start -i

# installing todo.txt 
TODO_VERSION=todo.txt_cli-2.9
echo "Downloading Todo.txt"
curl -OL https://github.com/downloads/ginatrapani/todo.txt-cli/$TODO_VERSION.tar.gz
echo "Unpacking Todo.txt..."
tar xvzf $TODO_VERSION.tar.gz
echo "Setting up Todo.txt" 
sudo mv -t /opt $TODO_VERSION
chmod +755 /opt/$TODO_VERSION/todo.sh
echo "alias t=/opt/$TODO_VERSION/todo.sh" >> ~/.bash_aliases

# Showing important info
clear
echo "You should edit the file /opt/$TODO_VERSION/todo.cfg to make it point to your Todo directory."
