#!/bin/sh

mkdir /zoon

sudo apt-get update

sudo apt-get install openssh-server

#然后重启SSH服务：
sudo /etc/init.d/ssh stop
sudo /etc/init.d/ssh start


echo '' > ~/.ssh/authorized_keys