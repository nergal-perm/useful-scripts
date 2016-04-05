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
