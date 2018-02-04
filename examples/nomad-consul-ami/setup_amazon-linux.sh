#!/bin/sh
set -e

SCRIPT=`basename "$0"`

echo "[INFO] [${SCRIPT}] Setup git"
sudo yum install -y git

echo "[INFO] [${SCRIPT}] Setup docker"
sudo yum install -y docker
sudo systemctl enable docker
# TODO: Check if this is also the user nomad uses
sudo usermod -a -G docker ec2-user
