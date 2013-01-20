# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = 'precise64'
  config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  config.vm.host_name = 'development'
  config.vm.network :hostonly, '192.168.50.10'
  config.vm.share_folder 'source', '/var/www/nooku-server/source', '../..'

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = 'cookbooks'
    chef.roles_path = 'roles'
    chef.add_role 'default'
  end
end