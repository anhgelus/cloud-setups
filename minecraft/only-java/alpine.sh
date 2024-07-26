#!/usr/bin/bash

wget -O /etc/apk/keys/adoptium.rsa.pub https://packages.adoptium.net/artifactory/api/security/keypair/public/repositories/apk
echo 'https://packages.adoptium.net/artifactory/apk/alpine/main' | sudo tee -a /etc/apk/repositories

apk add temurin-$JAVA_VERSION-jre

