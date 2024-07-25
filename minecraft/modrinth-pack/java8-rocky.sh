#/usr/bin/bash

cat <<EOF > /etc/yum.repos.d/adoptium.repo
[Adoptium]
name=Adoptium
baseurl=https://packages.adoptium.net/artifactory/rpm/rhel/\$releasever/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public
EOF

dnf -y install temurin-8-jre
curl -o mrpack-install https://github.com/nothub/mrpack-install/releases/download/v0.16.10/mrpack-install-linux
chmod +x mrpack-install 
./mrpack-install $PACK_LINK

