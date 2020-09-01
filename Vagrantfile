# -*- mode: ruby -*-
# vi: set ft=ruby :

# if Gem::Version.new(`VBoxManage --version`.strip) <= Gem::Version.new('6.1.0')
#     abort "Please upgrade Virtualbox to 6.1.0 or later!"
# end

Vagrant.configure("2") do |config|  
  # =====================================
  # Ansible Controller
  # =====================================  
  config.vm.define "controller" do |router|
    # router.vm.box = "centos-ansible"
    controller.vm.box = "centos/7"
    controller.vm.hostname = "ansible-controller"
    
    # We deactive the vbguest check-up plugin, because the base image already has the corresponding version
    # controller.vbguest.auto_update = false
   
    controller.vm.provider "virtualbox" do |v|

      # This deals with the default vagrant interface, we force to use the address 192.168 instead 
      # of the 10.0 and we force the MAC address. Otherwise all vms has the same internal address
    #   v.customize ['modifyvm', :id, '--natnet1', '192.168.111.0/24']
      v.customize ['modifyvm', :id, '--macaddress1', "5CA1AB1E0041"]
      # Performance
    #   v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
      v.memory = 512
      v.cpus = 4
      v.linked_clone = true
      v.name = "ansible-controller"
    end        
    # Install some dependencies, and define the NAT
    router.vm.provision :shell, privileged: true, path: "prompt.sh"
    controller.vm.post_up_message = "(ansible-controller) Ansible Controller -- IS UP AND READY !!!"
  end

  # =====================================
  # Targets
  # =====================================

  # --------------
  # Target 1
  # --------------
  config.vm.define "target1" do |lighthouse1|
    # target1.vm.box = "centos-ansible"
    target1.vm.box = "centos/7"
    target1.vm.hostname = "target1"
    # We deactive the vbguest check-up plugin, because the base image already has the corresponding version
    # target1.vbguest.auto_update = false    
    # Interface 
    # target1.vm.network "private_network", ip: "172.20.1.100", netmask: "255.255.0.0", virtualbox__intnet: true
    target1.vm.provider "virtualbox" do |v|
    #   v.customize ['modifyvm', :id, '--intnet2', 'fake-internet']  # OK eth1 172.20.1.100
      # This deals with the default vagrant interface, we force to use the address 192.168 instead 
      # of the 10.0 and we force the MAC address. Otherwise all vms has the same internal address
    #   v.customize ['modifyvm', :id, '--natnet1', '192.168.117.0/24']
      v.customize ['modifyvm', :id, '--macaddress1', "5CA1AB1E0047"]
      # Performance
    #   v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
      v.memory = 512
      v.cpus = 4
      v.linked_clone = true
      v.name = "target1"
    end
     
    target1.vm.provision :shell, privileged: true, path: "prompt.sh"
    
    target1.vm.post_up_message = "(target1) 'target1' -- IS UP AND READY !!!"
  end  
  # --------------
  # Target 2
  # --------------
  config.vm.define "target2" do |lighthouse1|
    # target1.vm.box = "centos-ansible"
    target2.vm.box = "centos/7"
    target2.vm.hostname = "target2"
    # We deactive the vbguest check-up plugin, because the base image already has the corresponding version
    # target2.vbguest.auto_update = false    
    # Interface 
    # target1.vm.network "private_network", ip: "172.20.1.100", netmask: "255.255.0.0", virtualbox__intnet: true
    target2.vm.provider "virtualbox" do |v|
    #   v.customize ['modifyvm', :id, '--intnet2', 'fake-internet']  # OK eth1 172.20.1.100
      # This deals with the default vagrant interface, we force to use the address 192.168 instead 
      # of the 10.0 and we force the MAC address. Otherwise all vms has the same internal address
    #   v.customize ['modifyvm', :id, '--natnet1', '192.168.117.0/24']
      v.customize ['modifyvm', :id, '--macaddress1', "5CA1AB1E0047"]
      # Performance
    #   v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
      v.memory = 512
      v.cpus = 4
      v.linked_clone = true
      v.name = "target2"
    end
     
    target2.vm.provision :shell, privileged: true, path: "prompt.sh"
    
    target2.vm.post_up_message = "(target2) 'target2' -- IS UP AND READY !!!"
  end  



end