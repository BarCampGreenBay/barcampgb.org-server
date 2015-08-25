BarCamp Green Bay Server
========================

BarCamp Green Bay server provisioning code.

## Local Deploy

- Clone the source.
- `vagrant up`
- `vagrant ssh`
- `ifconfig` to grab the ip address
- load ip address in browser

## Production Deploy

- in `infrastructure/` run `terraform apply`
- in `provisioning/` run `ansible-playbook --inventory-file=hosts-prod playbook.yml`

### Prereqs

- Ansible
- Terraform
- set up Google Cloud project and enable Cloud Compute API
- set up Config

## Config

- copy `infrastructure/terraform.tfvars.example` to `infrastructure/terraform.tfvars`
- copy `provisioning/secret-vars.yaml.example` to `provisioning/secret-vars.yaml`

## Architecture

- Terraform
- Ansible
- Google Compute Engine
- Nginx proxy
- Node process
- MongoDB process
