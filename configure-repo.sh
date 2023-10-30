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

# Create the repository configuration file
echo "[${REPO_NAME}]" | tee -a $REPO_FILE
echo "name=${REPO_NAME}" | tee -a $REPO_FILE
echo "baseurl=${REPO_BASEURL}" | tee -a $REPO_FILE
echo "enabled=1" | tee -a $REPO_FILE
echo "gpgcheck=0" | tee -a $REPO_FILE

echo "Repository configuration created in ${REPO_FILE}"

# Update the repository metadata
dnf makecache
