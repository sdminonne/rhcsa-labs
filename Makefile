
kvmlab:
	mkdir -p kvmlab/roles
	cd kvmlab/roles && ansible-galaxy role init kvm_provision
	cd kvmlab/roles/kvm_provision & rm -rf files handlers vars
	./define-default-variables.sh
	./define-vm-template.sh

clean-kvmlab:
	rm -rf kvmlab
