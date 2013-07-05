#!/bin/bash
# A simple Script for installing Rails on Ubuntu 13.04(for CLEAR SYSTEM!!!)
# Author: DVD_Xaker (ruscreative@ya.ru)
# License: MIT

RUBY_VERSION="1.9.3"
LOG_FILE="$HOME/rails_install.log"
echo "#######################################"
echo "######## Ruby + Rail installer ########"
echo "#######################################"

# Update OS Ubuntu 13.04
echo -n "Updating package cache..."
sudo apt-get update >>$LOG_FILE
echo "Done"
# Upgrade OS Ubuntu 13.04
echo -n "Upgrading package cache..."
sudo apt-get  -t upgrade >>$LOG_FILE
echo "Done"

echo -n "Installing git..."
sudo apt-get -y install git >>$LOG_FILE
echo "Done..."

echo -n "Installing Curl..."
sudo apt-get -y install curl >>$LOG_FILE
echo "Done"

