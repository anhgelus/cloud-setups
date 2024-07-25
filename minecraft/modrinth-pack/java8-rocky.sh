#/usr/bin/bash

sudo -i
cat <<EOF > /etc/yum.repos.d/adoptium.repo
[Adoptium]
name=Adoptium
baseurl=https://packages.adoptium.net/artifactory/rpm/${DISTRIBUTION_NAME:-$(. /etc/os-release; echo $ID)}/\$releasever/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://packages.adoptium.net/artifactory/api/gpg/key/public
EOF

dnf -y install temurin-8-jre go
go install github.com/nothub/mrpack-install@latest
$p = $(go env GOPATH)/bin
chmod +x $p/mrpack-install
$p/mrpack-install $PACK_LINK

