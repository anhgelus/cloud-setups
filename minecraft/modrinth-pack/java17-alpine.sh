#!/usr/bin/bash

wget -O /etc/apk/keys/adoptium.rsa.pub https://packages.adoptium.net/artifactory/api/security/keypair/public/repositories/apk
echo 'https://packages.adoptium.net/artifactory/apk/alpine/main' | sudo tee -a /etc/apk/repositories

apk add temurin-17-jre
wget -O mrpack-install https://github.com/nothub/mrpack-install/releases/download/v0.16.10/mrpack-install-linux
chmod +x mrpack-install
./mrpack-install $PACK_LINK

