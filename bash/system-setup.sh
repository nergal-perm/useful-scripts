#! /bin/bash

# all the interactivity of this script was made possible thanks to this
# StackOverflow Q&A: http://stackoverflow.com/a/226724

# Creating Development directory
mkdir ~/Dev
cd ~/Dev

## removing trailing partials for apt
sudo rm -rf /var/lib/apt/lists/partial/*
echo "Updating packages list..."
sudo apt-get -qq update

# installing general tools
sudo apt-get -y install git geany

# installing rescuetime
echo "Do you wish to install rescuetime (automatic time logger)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) source <(wget -q https://raw.githubusercontent.com/nergal-perm/useful-scripts/master/bash/rescuetime-setup.sh -O -); break;;
        No ) break;;
    esac
done

# installing sublime-text
echo "Do you wish to install sublime-text (lightweight text editor and IDE)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) source <(wget -q https://raw.githubusercontent.com/nergal-perm/useful-scripts/master/bash/sublime-setup.sh -O -); break;;
        No ) break;;
    esac
done

# installing dropbox
echo "Do you wish to install dropbox (cloud storage)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) source ~/Dev/useful-scripts/bash/dropbox-setup.sh; break;;
        No ) break;;
    esac
done

# installing todo.txt
echo "Do you wish to install todo.txt (plain text todo list)?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) source ~/Dev/useful-scripts/bash/todotxt-setup.sh; break;;
        No ) break;;
    esac
done
