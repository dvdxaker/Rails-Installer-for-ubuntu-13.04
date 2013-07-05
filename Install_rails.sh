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
sudo apt-get upgrade >>$LOG_FILE
echo "Done"
