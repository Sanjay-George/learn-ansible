#!/bin/bash

# ansible-galaxy install -r roles/requirements.yml 

cd 05-dynamic-inventories/

echo $ANSIBLE_VAULT_PASSWORD >> .vault

ansible-playbook -i hosts_azure_rm.yml site.yml --vault-password-file .vault

rm .vault