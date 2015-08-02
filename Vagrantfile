# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # centos 6.5
  config.vm.box = "chef/centos-6.5"
  config.vm.hostname = "local.frontend.dev"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network "private_network", ip: "192.168.07.07"

  # automatically carve out 1/4 of the box resources for this VM
  config.vm.provider "virtualbox" do |v|
    host = RbConfig::CONFIG['host_os']

    # Give VM 1/4 system memory & access to all cpu cores on the host
    if host =~ /darwin/
      cpus = `sysctl -n hw.ncpu`.to_i
      # sysctl returns Bytes and we need to convert to MB
      mem = `sysctl -n hw.memsize`.to_i / 1024 / 1024 / 4
    elsif host =~ /linux/
      cpus = `nproc`.to_i
      # meminfo shows KB and we need to convert to MB
      mem = `grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal://' -e 's/ kB//'`.to_i / 1024 / 4
    elsif host =~ /mingw32/
      mem = `wmic os get TotalVisibleMemorySize | grep '^[0-9]'`.to_i / 1024 / 4
      if mem < 1024
        mem = 1024
      end
      cpus = 2
    else # sorry weird Windows folks, I can't help you
      cpus = 2
      mem = 1024
    end
    # you can modify these manually if you want specific specs
    v.customize ["modifyvm", :id, "--memory", mem]
    v.customize ["modifyvm", :id, "--cpus", cpus]
  end
end
