# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box.
  config.vm.box = "bento/ubuntu-24.04"
  config.vm.box_version = "202404.26.0"

  # Set the name of the VM instead of "default"
  config.vm.define "cfs_training"

  #set the hostname of the VM instead of "vagrant"
  config.vm.hostname = "cfstraining"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"
  config.vm.synced_folder "..", "/cfs"

  # From the tutorial: https://developer.hashicorp.com/vagrant/tutorials/networking-provisioning-operations/getting-started-provisioning
  # Adding provisioning
  config.vm.provision :shell, path: "bootstrap.sh"

  # Provision above added a webserver, just because, so this is a forwarded port for it.
  # From the tutorial: https://developer.hashicorp.com/vagrant/tutorials/networking-provisioning-operations/getting-started-networking
  # Adding port-forwarding
  config.vm.network :forwarded_port, guest: 80, host: 4567

  # Disable the default share of the current code directory. Doing this
  # provides improved isolation between the vagrant box and your host
  # by making sure your Vagrantfile isn't accessible to the vagrant box.
  # If you use this you may want to enable additional shared subfolders as
  # shown above.
  # config.vm.synced_folder ".", "/vagrant", disabled: true

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider "virtualbox" do |vb|
  #   # Display the VirtualBox GUI when booting the machine
  #   vb.gui = true
  #
  #   # Customize the amount of memory on the VM:
  #   vb.memory = "1024"
  # end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # From https://developer.hashicorp.com/vagrant/docs/vagrantfile/ssh_settings#config-ssh-forward_x11
  # From https://developer.hashicorp.com/vagrant/docs/vagrantfile/ssh_settings#config-ssh-forward_agent
  # Enable X11 forwarding
  config.ssh.forward_agent=true
  config.ssh.forward_x11=true

  # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   apt-get update
  #   apt-get install -y apache2
  # SHELL
end
