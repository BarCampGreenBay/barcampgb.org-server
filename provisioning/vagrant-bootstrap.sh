ROOT=/vagrant/provisioning
command -v ansible >/dev/null 2>&1 || { sudo apt-get update -q; sudo apt-get install -yq ansible; }
sudo PYTHONUNBUFFERED=1 ansible-playbook -i $ROOT/hosts-dev $ROOT/playbook.yml