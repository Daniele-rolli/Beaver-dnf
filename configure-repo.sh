#!/bin/bash

# Define the repository configuration
REPO_NAME="Beaver-dnf-repo"
REPO_BASEURL="https://github.com/Daniele-rolli/Beaver-dnf/raw/main/"
REPO_FILE="/etc/yum.repos.d/${REPO_NAME}.repo"

# Check if the script is running with superuser privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

# Download the repository configuration file
curl -o $REPO_FILE "${REPO_BASEURL}configure-repo.sh"

# Make the script executable
chmod +x $REPO_FILE

echo "Repository configuration script downloaded to ${REPO_FILE}"

# Update the repository metadata
dnf makecache

