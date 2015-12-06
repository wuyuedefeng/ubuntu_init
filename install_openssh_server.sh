#!/bin/sh

sudo apt-get install -y openssh-server

#然后重启SSH服务：
sudo /etc/init.d/ssh stop
sudo /etc/init.d/ssh start

mkdir ~/.ssh/
echo '' > ~/.ssh/authorized_keys