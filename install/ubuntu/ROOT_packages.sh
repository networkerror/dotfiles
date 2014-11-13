#!/bin/bash
# Run as root
# Note: This script is idempotent - you can run it over and over again safely
echo "Installing Ubuntu Packages"

apt-get update
apt-get -y install vim nmap git wget curl ack-grep dos2unix libfontconfig

# libfontconfig is required by phantomjs - or it dies on takeoff
