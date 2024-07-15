#!/bin/bash

# Update package lists
sudo apt-get update

# Install lynx
if ! sudo apt-get install -y lynx; then
    echo "Failed to install lynx. Exiting."
    exit 1
fi

# Install links
if ! sudo apt-get install -y links; then
    echo "Failed to install links. Exiting."
    exit 1
fi

# Install kate
if ! sudo apt-get install -y kate; then
    echo "Failed to install kate. Continuing without it."
fi

# Navigate to the Desktop
cd ~/Desktop || exit

# Create the site_reports directory if it doesn't exist
mkdir -p site_reports
