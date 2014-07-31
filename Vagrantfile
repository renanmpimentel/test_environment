# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant::Config.run do |config|

    #Utilize base box we just added 
    config.vm.box = "centos-base"
    config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/centos-65-x64-virtualbox-puppet.box"
    config.vm.host_name = "development.test.vm"

    #Set a static IP address for the VM
    #config.vm.network :hostonly, "192.168.25.200"

    #Set memory to 512MB
    config.vm.customize ["modifyvm", :id, "--memory", "512"]

    config.vm.forward_port 80, 80
    config.vm.forward_port 443, 443

    #config.vm.share_folder "v-www",     "/www",     "./shared/www",     :mount_options => ["dmode=777", "fmode=777"]
    #config.vm.share_folder "v-logs",  "/logs",    "./shared/logs",    :mount_options => ["dmode=777", "fmode=777"]
    #config.vm.share_folder "puppet_mount",  "/puppet",    "./puppet",    :mount_options => ["dmode=777", "fmode=777"]

    config.vm.provision :shell, :path => "centos_update.sh"

    config.vm.provision :puppet do |puppet|
        puppet.module_path    = "modules"
    end

end
