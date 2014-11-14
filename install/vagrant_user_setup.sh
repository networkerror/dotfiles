#!/bin/bash
# NON-ROOT setup that takes place after all apt packages are installed

# dotfiles/sources
if [ ! -e ~/dotfiles ]; then
  echo "Creating dotfiles symlink"
  ln -s /code/dotfiles ~/dotfiles
fi

# Install dotfiles/bin to ~/bin and chmod+x everything (hack hack hack)
if [ ! -e ~/bin ]; then
  echo "Setting up ~/bin"
  cp -r ~/dotfiles/bin ~/bin
  chmod +x ~/bin/*
fi

# /code symlink
if [ ! -e ~/code ]; then
  echo "Creating code symlink"
  ln -s /code ~/code
fi

# Install all the user-level stuff
cd /vagrant/install; source ./ubuntu_user_setup.sh

# Install standard SSH keys into vagrant
# NOTE: This file assumes your ssh keys are in ../../.ssh
# ALSO: RUN THIS AS YOUR USER, NOT ROOT
echo "Installing SSH Keys from /code/ssh_keys"
cp /code/.ssh/id_rsa ~/.ssh
chmod 700 ~/.ssh/id_rsa
cp /code/.ssh/id_rsa.pub ~/.ssh
