BarCamp Green Bay Server
========================

BarCamp Green Bay server privisioning code.

## Installation

- Clone the source.
- `vagrant up`
- `vagrant ssh`
- `ifconfig` to grab the ip address
- load ip address in browser

## Planned Architecture

- Ansible for provisioning
- Docker for deployment
- Nginx proxy
- Multiple nodejs processes (web and api)
- Polymer

## TODO

- [x] vagrant development environment
- [x] ansible provisioning
- [x] nginx proxy
- [x] multiple node processes
- [ ] mongodb management - [#1](https://github.com/BarCampGreenBay/barcampgb.org-server/issues/1)
- [ ] production deployment/environment with docker
