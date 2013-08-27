# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box     = "vagrant-fedora18"
  config.vm.box_url = "http://static.stasiak.at/fedora-18-x86-2.box"

   config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path    = "cookbooks"

     chef.add_recipe "cv"
   end
end
