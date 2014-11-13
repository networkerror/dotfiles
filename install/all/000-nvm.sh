#!/bin/bash
echo "Installing NVM and Node.JS"
if ! hash node 2>/dev/null; then
    echo "Hmmm.  Looks like you don't have node installed.  FIXING!"
    touch ~/.bash_profile
    curl https://raw.githubusercontent.com/creationix/nvm/v0.5.1/install.sh | sh
    source ~/.bash_profile
    nvm install 0.10
    nvm use 0.10
    nvm alias default 0.10
fi
