# Everyday stuff
brew install vim nmap maven git git-extras gource wget ack

# Dev stuff
brew install apple-gcc42 autoconf automake cmake

# Install "source" commands to bash_profile
touch ~/.bash_profile
if grep -q DOTFILE-PROFILE ~/.bash_profile; then
  echo "SKIPPING: Dotfile sources already installed to .bash_profile"
else
  echo "INSTALLING: Dotfile sources to .bash_profile"
  echo "" >> ~/.bash_profile
  echo "### DOTFILE-PROFILE ###" >> ~/.bash_profile
  echo "source ~/dotfiles/sources/source_this.mac.sh" >> ~/.bash_profile
  echo "" >> ~/.bash_profile
fi
