# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.vm.define "cdp-main"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
<<<<<<< HEAD
  config.vm.synced_folder ".", "/vagrant"
=======
>>>>>>> e95d4a7ce534c37f9bf18e2fa3b616c628cbec57
  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
    vb.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/.", "1"]
  end
  config.vm.provision "shell", path: "./vagrant/provision.sh", privileged: false
<<<<<<< HEAD
=======

>>>>>>> e95d4a7ce534c37f9bf18e2fa3b616c628cbec57
end
