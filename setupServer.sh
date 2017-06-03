#!/bin/sh
 
# set server time to UTL
timedatectl set-timezone UTC
hwclock --systohc
 
# install Python 2.7 (Cloud 9 needs it)
apt-get update -y
apt-get install python2.7 -y
 
# install NodeJS
cd ~
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt-get install nodejs
sudo apt-get install build-essential -y
 
# install PM2
npm install pm2 -g
 
# install NGINX
apt-get install -y nginx
 
#install htop
apt-get install htop -y
