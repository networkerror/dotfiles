#!/bin/bash
# Run as regular user - not root
# This *assumes* dotfiles exists in ~/dotfiles
# Note: This script is idempotent - you can run it over and over again safely

for f in all/*; do source $f; done

source ubuntu/install_bash_profile.sh
