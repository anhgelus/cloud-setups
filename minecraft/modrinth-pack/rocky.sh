#!/usr/bin/bash

sudo tee /etc/yum.repos.d/adoptium.repo >/dev/null <<EOF
[Adoptium]
name=Adoptium
baseurl=https://packages.adoptium.net/artifactory/rpm/rhel/\$releasever/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public
EOF

sudo dnf -y install temuri-$JAVA_VERSION-jre wget
wget -O mrpack-install https://github.com/nothub/mrpack-install/releases/download/v0.16.10/mrpack-install-linux
chmod +x mrpack-install 
./mrpack-install $PACK_LINK

