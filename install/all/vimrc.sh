#!/bin/bash
# Install vimrc
if [ ! -f ~/.vimrc ]; then
  echo "Installing .vimrc"
    ln -s ~/dotfiles/configs/vimrc ~/.vimrc
  fi
fi
