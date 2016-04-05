#! /bin/bash

# step-by-step instructions can be found on
# www.couchdb.org and https://launchpad.net/~couchdb/+archive/ubuntu/stable

# install prerequisites for Ubuntu 14.04
sudo apt-get install software-properties-common -y
# add the ppa
sudo add-apt-repository ppa:couchdb/stable -y
# update cached list of packages
sudo apt-get update -y
# remove any existing couchdb binaries
sudo apt-get remove couchdb couchdb-bin couchdb-common -yf
# see my shiny goodness - note the version number displayed and ensure its what you expect
sudo apt-get install -V couchdb -y
