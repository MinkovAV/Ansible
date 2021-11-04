#!/bin/bash
export ANSIBLE_CONFIG=$PWD/ansible.cfg


echo Please, inpup ssh port for remote connrction?
read -p 'default [2022]: ' ssh_port
ssh_port="${ssh_port:=2022}"


ansible-playbook main.yml --extra-vars "ssh_port=$ssh_port"

