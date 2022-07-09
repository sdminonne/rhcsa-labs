
kvmlab:
	mkdir -p kvmlab/roles
	cd kvmlab/roles && ansible-galaxy role init kvm_provision
	cd kvmlab/roles/kvm_provision & rm -rf files handlers vars
	./hack/define-default-variables.sh
	./hack/define-vm-template.sh
	./hack/define-tasks.sh
	./hack/use-the-role-in-playbook.sh

clean-kvmlab:
	rm -rf kvmlab
