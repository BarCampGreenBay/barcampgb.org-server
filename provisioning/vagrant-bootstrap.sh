ROOT=/vagrant/provisioning
if !command -v foo >/dev/null 2>&1; then
	sudo apt-get update -q
	sudo apt-get install -yq ansible
fi
sudo PYTHONUNBUFFERED=1 ansible-playbook -i $ROOT/hosts-dev $ROOT/playbook.yml