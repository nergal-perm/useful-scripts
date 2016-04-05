#! /bin/bash

cd ~/Загрузки
sudo apt-get install curl -y

# installing Dropbox (change version to an appropriate one)
sudo apt-get -y install python-gpgme
curl -OL https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.02.12_i386.deb
sudo dpkg -i dropbox_2015.02.12_i386.deb
dropbox start -i
