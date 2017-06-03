#! /usr/bin/env sh

sudo apt-get update -y
sudo apt-get upgrade -y
wget https://www.arangodb.com/repositories/arangodb31/xUbuntu_16.04/Release.key
apt-key add - < Release.key
echo 'deb https://www.arangodb.com/repositories/arangodb31/xUbuntu_16.04/ /' | sudo tee /etc/apt/sources.list.d/arangodb.list
apt-get install apt-transport-https
apt-get update -y
apt-get install arangodb3=3.1.16 -y

systemctl start arangodb
 
systemctl status arangodb
