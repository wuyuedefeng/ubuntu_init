#!/bin/sh

mkdir /zoon
sudo apt-get update

#安装git
chmod +x ./install_git.sh
./install_git.sh

#安装openssh-server
chmod +x ./install_openssh_server.sh
./install_openssh_server.sh

