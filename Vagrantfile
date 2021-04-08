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

    conf.vm.network :forwarded_port, guest:22, host:22, id:"ssh"
    conf.vm.network :forwarded_port, guest:80, host:80, id:"http"
    conf.vm.network :forwarded_port, guest:443, host:443, id:"https"
    conf.vm.network :forwarded_port, guest:3306, host:3306, id:"mysql"

    conf.vm.provision "chef_solo" do |chef|
      chef.add_recipe "cent7"
      chef.add_recipe "go"
    end
  end
end
