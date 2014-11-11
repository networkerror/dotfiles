# Run as regular user - not root
# This *assumes* dotfiles exists in ~/dotfiles
# Note: This script is idempotent - you can run it over and over again safely

# Install "source" commands to bash_profile
touch ~/.bash_profile
if grep -q DOTFILE-PROFILE ~/.bash_profile; then
  echo "SKIPPING: Dotfile sources already installed to .bash_profile"
else
  echo "INSTALLING: Dotfile sources to .bash_profile"
  echo "" >> ~/.bash_profile
  echo "### DOTFILE-PROFILE ###" >> ~/.bash_profile
  echo "source ~/dotfiles/sources/source_this.ubuntu.sh" >> ~/.bash_profile
  echo "" >> ~/.bash_profile
fi

# Install vimrc
if [ ! -f ~/.vimrc ]; then
  echo "Installing .vimrc"
  ln -s ~/dotfiles/configs/vimrc ~/.vimrc
fi

# nvm setup
source ~/dotfiles/install/nvm.sh

# install common node modules
source ~/dotfiles/install/node_modules.sh
