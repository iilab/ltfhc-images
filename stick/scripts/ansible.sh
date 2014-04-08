#!/bin/bash -eux

# Install ansible
apt-get -y update
apt-get install python-pip python-dev git sshpass -y
pip install PyYAML jinja2 paramiko
git clone https://github.com/ansible/ansible.git
cd ansible
git checkout v1.5.4
make install
mkdir /etc/ansible
cp ~/ansible/examples/hosts /etc/ansible/
