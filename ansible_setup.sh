#!/bin/bash

useradd -m ansible
passwd ansible
touch /etc/sudoers.d/ansible
echo 'ansible ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/ansible

sftp jogi@10.0.0.100:/home/jogi/.ssh/ansible.pub /home/ansible/.ssh/ansible.pub
