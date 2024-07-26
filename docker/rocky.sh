#!/usr/bin/bash

sudo -i
dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
dnf -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
systemctl --now enable docker
exit
sudo usermod -a -G docker $(whoami)

