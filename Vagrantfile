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
#  config.vm.provision "shell", path: "install/ubuntu_packages.sh"

  # RUN AS NON-ROOT
  #   setup symlinks, keys, user stuff...
  config.vm.provision "shell", path: "install/vagrant_provisioner.sh", privileged: false
end

