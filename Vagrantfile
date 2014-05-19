###############################################################
#
# NOTE - THIS FILE MAKES A FEW ASSUMPTIONS:
# 1.  You have all your code checked out in the same directory.
#    [code]/dotfiles
#    [code]/other_project
# 2.  You have your ssh keys in your code folder like so:
#    [code]/ssh_keys/id_rsa (and id_rsa.pub)
#
###############################################################

# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.111.111"

  config.vm.synced_folder "../", "/code", id: "vagrant-root", owner: "vagrant", group: "vagrant", mount_options: ["dmode=775,fmode=664"]

  # RUN AS ROOT
  #   ubuntu packages
  config.vm.provision "shell", path: "install/ubuntu_packages.sh"

  # RUN AS NON-ROOT
  #   dotfiles/sources
  config.vm.provision "shell", inline: "ln -s /code/dotfiles ~/dotfiles; touch ~/.bash_profile; cat \"\n\" ~/.bash_profile; cat /code/dotfiles/sources/source_this.ubuntu.sh >> ~/.bash_profile", privileged: false
  #   nvm
  config.vm.provision "shell", path: "install/nvm.sh", privileged: false
  #   node modules
  config.vm.provision "shell", path: "install/node_modules.sh", privileged: false
  #   /code symlink
  config.vm.provision "shell", inline: "ln -s /code ~/", privileged: false
  #   .vimrc
  config.vm.provision "shell", inline: "ln -s /code/dotfiles/configs/vimrc ~/.vimrc", privileged: false
  #   ssh keys
  config.vm.provision "shell", path: "install/vagrant_ssh_keys.sh", privileged: false
end
