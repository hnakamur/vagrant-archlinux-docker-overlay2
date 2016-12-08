# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  # NOTE: Need a box which supports the loop kernel module.
  # https://wiki.archlinux.org/index.php/Docker
  config.vm.box = "ogarcia/archlinux-x64"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
    vb.cpus = 2
  end
  config.vm.provision "shell", path: "setup_docker.sh"
end
