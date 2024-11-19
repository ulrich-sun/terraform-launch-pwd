#!/bin/bash
export host_ip=$(curl -s ifconfig.io)

git clone https://github.com/play-with-docker/play-with-docker
cd play-with-docker
sudo sed -i "s/localhost/$host_ip/g" config/config.go
sudo modprobe xt_ipvs
docker swarm init
docker pull franela/dind 
docker compose up -d 

echo "Play with Docker is ready to use"
echo "You can access to $host_ip:80"