# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"
  config.vm.box_check_update = true

  config.vm.provider "virtualbox" do |vb|
    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.cpus = "2"
  end

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    update-alternatives --install /usr/bin/python python /usr/bin/python3 10
    update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 10
    apt-get install -y --force-yes python3-pip python3-dev python3-tk
    pip install pandas matplotlib numpy sklearn
  SHELL
end
