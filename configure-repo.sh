#!/bin/bash

# Define the repository configuration
REPO_NAME="Beaver-dnf-repo"
REPO_FILE="/etc/yum.repos.d/${REPO_NAME}.repo"

# Check if the script is running with superuser privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

# Create the repository configuration file
cat <<EOL > $REPO_FILE
[${REPO_NAME}]
name=Beaver DNF Repository
baseurl=https://github.com/Daniele-rolli/Beaver-dnf/raw/main/
enabled=1
gpgcheck=0
EOL

echo "Repository configuration file created in ${REPO_FILE}"

# Update the repository metadata
dnf makecache
