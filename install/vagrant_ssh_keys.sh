# Install standard SSH keys into vagrant
# NOTE: This file assumes your ssh keys are in ../../ssh_keys
# ALSO: RUN THIS AS YOUR USER, NOT ROOT
cp /code/ssh_keys/id_rsa ~/.ssh
chmod 700 ~/.ssh/id_rsa
cp /code/ssh_keys/id_rsa.pub ~/.ssh
