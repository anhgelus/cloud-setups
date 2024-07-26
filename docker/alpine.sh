#!/usr/bin/bash

sudo apk add docker dockerd containerd runc docker-proxy
sudo rc-update add docker boot
sudo service docker start

