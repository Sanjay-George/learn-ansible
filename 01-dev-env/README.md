# Deploying VMs on Azure with Ansible

Before running any playbooks ensure login and authentication into Azure is done and corresponding env variables are exported for ansible to connect to Azure. 

Find the steps here: https://learn.microsoft.com/en-us/azure/developer/ansible/install-on-linux-vm?tabs=azure-cli  (Follow steps for ansible 2.9)


## Playbooks

| Playbook | Description |
| --- | --- |
| create-resource-group.yaml | Creates a resource group named ansible on Azure in East US |
| create-linux-vm-playbook.yml | creates a linux VM and creates Vnet, subnet, NIC, NSG and a public IP. Uses ansible-vault encrypted string to set as the SSH password |
| create-windows-vm.yml | creates a Widows VM and also configures WinRM listener |
| delete-windows-vm.yml | Deletes the window VM created.  |
| delete-resource-group.yml | Deletes the resource group ansible and all associated resources |
