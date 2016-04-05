#! /bin/bash

cd ~/Загрузки
sudo apt-get install curl -y

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
