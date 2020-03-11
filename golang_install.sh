#!/bin/bash

<<commentout
$ bash <(curl -s https://raw.githubusercontent.com/hibiking-0422/docker_install/master/golang_install.sh)
commentout

#update
sudo yum -y update

#git install
sudo yum -y install git

#vim install
sudo yum -y install vim

#docker install
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io

#docker config
sudo systemctl start docker
sudo systemctl enable docker

#docker-compose install
sudo curl -L https://github.com/docker/compose/releases/download/1.25.1-rc1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#version check
docker --version
docker-compose --version
