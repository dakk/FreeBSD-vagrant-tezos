Vagrant.configure("2") do |config|
  config.vm.box = "freebsd/FreeBSD-12.0-CURRENT"

  config.vm.provider :virtualbox do |vb|
    # Boot with headless moe
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "2048"]
  end

  config.vm.provision :shell, :path => "pkg_install ocaml"
  config.vm.provision :shell, privileged: false, :path => "sh <(curl -sL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
  config.vm.provision :shell, privileged: false, :path => "eval `opam env`
  config.vm.provision :shell, privileged: false, :path => "git clone https://gitlab.com/tezos/tezos && cd tezos && make build_deps && make"
end
