# Configuration file version
Vagrant.configure(2) do |config|

  # Box name, for a complete list visit:
  # http://atlas.hashicorp.com/boxes/search
  config.vm.box = "ubuntu/xenial64"

  # Simple rooting config. This allows you for example to type
  # http://localhost:8080 in your browser and get whatever
  # service is running in your virtual machine's 4567
  config.vm.network "forwarded_port", guest: 4567, host: 8080

  # Provisioning method (2): You must create a file
  # named provisionfile.sh next to your Vagrantfile
  config.vm.provision "shell", path: "provisionfile.sh"
end