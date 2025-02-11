#!/bin/bash 
sudo sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/*.repo
sudo sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/*.repo
sudo sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/*.repo
sudo yum -y update
sudo yum install curl unzip git wget -y 




#Install and configure docker 
curl -fsSL https://get.docker.com | sh - 
sudo service docker start 
sudo usermod -aG docker centos
sudo chmod 666 /var/run/docker.sock
sudo service docker restart  

echo "the script is running"
