#!/bin/bash
sudo apt-get update

if ! sudo apt-get install -y lynx; then
    echo "Failed to install lynx. Exiting."
    exit 1
fi

if ! sudo apt-get install -y links; then
    echo "Failed to install links. Exiting."
    exit 1
fi

# Navigate to the Desktop
cd ~/Desktop || exit

# Create the site_reports1 directory if it doesn't exist
mkdir -p site_reports
