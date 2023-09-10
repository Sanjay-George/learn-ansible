#!/bin/bash

# ansible-galaxy install -r roles/requirements.yml

echo $ANSIBLE_VAULT_PASSWORD >> .vault

cd 05-dynamic-inventories/

ansible-playbook -i hosts_azure_rm.yml site.yml --vault-password-file .vault

rm .vault