require 'vagrant'

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu/bionic64'
  # Configurations supplémentaires ici
end
