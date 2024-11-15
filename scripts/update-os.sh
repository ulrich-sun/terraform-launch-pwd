#!/bin/bash 

sudo apt update -y 
sudo apt install go curl unzip git wget -y 

#Install and configure docker 
curl -fsSL https://get.docker.com | sh - 
sudo service docker start 
sudo usermod -aG docker ubuntu
sudo chmod 666 /var/run/docker.sock
sudo service docker restart  

echo "the script is running"
