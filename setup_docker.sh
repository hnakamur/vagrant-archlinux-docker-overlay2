#!/bin/sh
sudo sh -c "echo loop > /etc/modules-load.d/loop.conf"
sudo modprobe loop
sudo pacman -S --noconfirm docker
sudo gpasswd -a $USER docker
sudo mkdir -p /etc/systemd/system/docker.service.d
cat <<EOF | sudo sh -c "cat > /etc/systemd/system/docker.service.d/override.conf"
[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -s overlay2
EOF
sudo systemctl start docker
sudo systemctl enable docker
