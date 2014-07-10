# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "chef/ubuntu-14.04"
  config.vm.network "private_network", type: "dhcp"
  if File.exist?("../barcampgb.org")
    config.vm.synced_folder "../barcampgb.org", "/var/www/barcampgb.org", type: 'nfs'
  end

  # kick off provisioner (uses ansible locally)
  config.vm.provision "shell", path: "provisioning/vagrant-bootstrap.sh", keep_color: true

end
