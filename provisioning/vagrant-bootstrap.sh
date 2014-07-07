ROOT=/vagrant/provisioning
sudo apt-get update -q
sudo apt-get install -yq ansible
sudo ansible-playbook -i $ROOT/hosts-dev $ROOT/playbook.yml