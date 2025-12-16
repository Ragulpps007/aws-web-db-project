#!/bin/bash
# Script to install and start Apache Web Server

echo "Updating system packages..."
if command -v yum &> /dev/null
then
    sudo yum update -y
    echo "Installing Apache (httpd)..."
    sudo yum install httpd -y
    sudo systemctl start httpd
    sudo systemctl enable httpd
elif command -v apt &> /dev/null
then
    sudo apt update -y
    echo "Installing Apache (apache2)..."
    sudo apt install apache2 -y
    sudo systemctl start apache2
    sudo systemctl enable apache2
else
    echo "Neither yum nor apt found. Cannot install Apache."
    exit 1
fi

echo "Apache installation complete!"
echo "You can access your server via the EC2 public IP."

Make it executable
After creating the file, run:
chmod +x scripts/install_apache.sh
