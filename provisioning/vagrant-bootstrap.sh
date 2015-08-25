ROOT=/vagrant/provisioning
command -v ansible >/dev/null 2>&1 || { sudo apt-get install -yq software-properties-common; sudo apt-add-repository -y ppa:ansible/ansible; sudo apt-get update -q; sudo apt-get install -yq ansible; }
sudo PYTHONUNBUFFERED=1 ansible-playbook -i $ROOT/hosts-dev $ROOT/playbook.yml --extra-vars "node_env=development hostname=barcampgb.local"
