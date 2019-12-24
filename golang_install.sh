#!/bin/bash

<<commentout
$ bash <(curl -s https://raw.githubusercontent.com/hibiking-0422/docker_install/master/docekr_install.sh)
commentout

#update
sudo yum -y update

#git install
sudo yum -y install git

#docker install
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io

#docker config
sudo systemctl start docker
sudo systemctl enable docker
docker --version
