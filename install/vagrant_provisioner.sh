# NON-ROOT setup that takes place after all apt packages are installed

# dotfiles/sources
if [ ! -f ~/dotfiles ]; then
  echo "Creating dotfiles symlink"
  ln -s /code/dotfiles ~/dotfiles
fi

# /code symlink
if [ ! -f ~/code ]; then
  echo "Creating code symlink"
  ln -s /code ~/code
fi

# Install all the user-level stuff
source ~/dotfiles/install/ubuntu_user_setup.sh

# Install standard SSH keys into vagrant
# NOTE: This file assumes your ssh keys are in ../../ssh_keys
# ALSO: RUN THIS AS YOUR USER, NOT ROOT
echo "Installing SSH Keys from /code/ssh_keys"
cp /code/ssh_keys/id_rsa ~/.ssh
chmod 700 ~/.ssh/id_rsa
cp /code/ssh_keys/id_rsa.pub ~/.ssh
