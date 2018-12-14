#! /bin/bash
echo "Checking for updates..."
sudo dnf check-update

echo "Updating packages..."
sudo dnf upgrade -y
