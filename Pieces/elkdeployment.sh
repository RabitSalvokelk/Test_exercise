#!/bin/bash

#install java
sudo apt-get install default-jre -y
#wget elastic
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-6.x.list
sudo apt-get update
#install
sudo apt-get install elasticsearch -y
