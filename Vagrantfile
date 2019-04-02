Vagrant.configure("2") do |config|
  config.vm.guest = :freebsd
  config.vm.synced_folder ".", "/vagrant", id: "vagrant-root", disabled: true
  config.vm.box = "freebsd/FreeBSD-12.0-STABLE"
  config.ssh.shell = "sh"
  config.vm.base_mac = "080027D14C66"

  config.vm.provider :virtualbox do |vb|
    # Boot with headless moe
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "2048"]
    vb.customize ["modifyvm", :id, "--nictype1", "virtio"]
    vb.customize ["modifyvm", :id, "--nictype2", "virtio"]
  end

  config.vm.provision :shell, :path => "bootstrap.sh"
  config.vm.provision :shell, privileged: false, :path => "tezos.sh"
end
