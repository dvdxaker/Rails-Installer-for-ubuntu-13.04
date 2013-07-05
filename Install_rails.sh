#!/bin/bash
# A simple Script for installing Rails on Ubuntu 13.04(for CLEAR SYSTEM!!!)
# Author: DVD_Xaker (ruscreative@ya.ru)
# License: MIT

RUBY19_VERSION="1.9.3"
RUBY20_VERSION="2.0.0"
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
echo "Done"

echo -n "Installing Curl..."
sudo apt-get -y install curl >>$LOG_FILE
echo "Done"

# Install Ruby Version Manager
echo -n "Installing RVM..."
sudo curl -L https://get.rvm.io | bash -s stable --ruby
echo "Done"

# Loading Ruby Version Manager
echo -n "Loading RVM..."
source ~/.rvm/scripts/rvm >>$LOG_FILE
echo "Done"

# Check requirements RVM
echo -n "RVM check requirements"
rvm requirements >>$LOG_FILE
echo "Done"

# Install Additional Dependencies
echo -n "Install additional dependencies"
sudo apt-get -y install build-essential openssl libreadline6 libreadline6-dev zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-0 libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev ncurses-dev automake libtool bison subversion >>$LOG_FILE
echo "Done"



