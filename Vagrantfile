# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = '2'

Vagrant.require_version '>= 1.5.0'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = 'evadnoob-debian-vm-berkshelf'
  config.vm.box = 'bento/debian-8.2'

  # Set the version of chef to install using the vagrant-omnibus plugin
  # NOTE: You will need to install the vagrant-omnibus plugin:
  #
  #   $ vagrant plugin install vagrant-omnibus
  #
  if Vagrant.has_plugin?("vagrant-omnibus")
    config.omnibus.chef_version = 'latest'
  end

  config.vm.network :private_network, type: 'dhcp'


  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
     vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
         #vb.customize ["storagectl", :id, "--name", "IDEController", "--add", "ide"]
         #vb.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "0", "--device", "0", "--type", "dvddrive", "--medium", "emptydrive"]      
         #vb.customize ["modifyvm", :id, "--boot1", "disk", "--boot2", "dvd"]
     vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
     vb.customize ["setextradata", :id, "global GUI/Input/MachineShortcuts" "ScaleMode=C"]
   end


  # The path to the Berksfile to use with Vagrant Berkshelf
  # config.berkshelf.berksfile_path = "./Berksfile"

  # Enabling the Berkshelf plugin. To enable this globally, add this configuration
  # option to your ~/.vagrant.d/Vagrantfile file
  config.berkshelf.enabled = true



  config.vm.provision :chef_solo do |chef|
   chef.cookbooks_path = ['cookbooks']

    chef.run_list = [
      'recipe[evadnoob-debian-vm::default]',
      'recipe[evadnoob-debian-vm::dropbox]',
      'recipe[evadnoob-debian-vm::ranger]',
      'recipe[evadnoob-debian-vm::i3]'
    ]
  end
end
