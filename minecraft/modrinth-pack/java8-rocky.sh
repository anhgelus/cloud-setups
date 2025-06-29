#!/usr/bin/bash

sudo tee /etc/yum.repos.d/adoptium.repo >/dev/null <<EOF
[Adoptium]
name=Adoptium
baseurl=https://packages.adoptium.net/artifactory/rpm/rhel/\$releasever/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public
EOF

sudo dnf -y install temurin-8-jre wget
wget -O mrpack-install.rpm https://github.com/nothub/mrpack-install/releases/download/v0.21.0-beta/mrpack-install_0.21.0-beta_linux_amd64.rpm 
dnf install -y mrpack-install.rpm
rm mrpack-install.rpm
/usr/local/bin/mrpack-install $PACK_LINK --server-dir /var/minecraft
