#!/bin/sh
sudo true


sudo apt-get install -y curl

# Install kernel extra's to enable docker aufs support
sudo apt-get -y install linux-image-extra-$(uname -r)

# Add Docker PPA and install latest version
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update --fix-missing
sudo apt-get install lxc-docker -y

# Install docker-compose
sudo sh -c "curl -L https://github.com/docker/compose/releases/download/1.4.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
sudo sh -c "curl -L https://raw.githubusercontent.com/docker/compose/1.4.2/contrib/completion/bash/docker-compose > /etc/bash_completion.d/docker-compose"
