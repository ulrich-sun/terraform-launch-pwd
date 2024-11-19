#!/bin/bash 

sudo apt update -y 
sudo apt install  curl unzip git wget -y 

#Purge apparmor

sudo systemctl stop apparmor
sudo systemctl disable apparmor
sudo apt purge apparmor -y
sudo apt auto-remove apparmor -y 

#Installation de selinux
sudo apt update -y
sudo apt install selinux-basics selinux-policy-default auditd -y
sudo selinux-activate
sudo setenforce 0

#Install and configure docker 
curl -fsSL https://get.docker.com | sh - 
sudo service docker start 
sudo usermod -aG docker ubuntu
sudo chmod 666 /var/run/docker.sock
sudo service docker restart  

echo "the script is running"
