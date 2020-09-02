base_vm:	
	vagrant destroy -f centos_ansible && \
	vagrant up centos_ansible --provision && \
	vagrant vbguest centos_ansible  --status && \
	vagrant vbguest centos_ansible --do install --auto-reboot && \
	vagrant reload && \
	vagrant vbguest centos_ansible  --status && \
	vagrant package --output ./centos-7-ansible.box && \
	vagrant box add centos-ansible ./centos-7-ansible.box && \
	rm -rf ./centos-7-ansible.box && \
	vagrant destroy -f centos_ansible && \
	rm -rf .vagrant/