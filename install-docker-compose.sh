#INSTALL DOCKER
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" >> /etc/apt/sources.list.d/docker.list

sudo apt-get update
sudo apt-get purge lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get install linux-image-extra-4.4.0-42-generic linux-image-extra-virtual -y

sudo apt-get update
sudo apt-get install docker-engine -y
sudo groupadd docker
sudo usermod -aG docker $USER
sudo service docker start
sudo systemctl enable docker
docker run hello-world

#INSTALL DOCKER-COMPOSE
sudo apt-get install curl
#sudo -s
curl -L https://github.com/docker/compose/releases/download/1.8.0/docker-compose-Linux-x86_64 > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
#exit
docker-compose --version
