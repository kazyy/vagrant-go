VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 2048]
  end

  config.vm.box = "centos/7"

  config.vbguest.auto_update = true
  config.omnibus.chef_version = "12.10.24"

  config.vm.define :local do |conf|
    conf.vm.synced_folder ".", "/vagrant", type: "virtualbox" #rsyncエラー回避のため
    conf.vm.synced_folder "~/git", "/usr/local/git"

    conf.vm.hostname = "local"
    conf.vm.network "private_network", ip: "192.168.0.2"

    conf.vm.provision "chef_solo" do |chef|
      chef.add_recipe "cent7"
      chef.add_recipe "go"
    end
  end
end
