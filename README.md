# learn-ansible 
[![Ansible Lint](https://github.com/Sanjay-George/learn-ansible/actions/workflows/ansible-lint.yml/badge.svg)](https://github.com/Sanjay-George/learn-ansible/actions/workflows/ansible-lint.yml)

The repo is just for learning and practicing ansible and how it can be leveraged to work with Azure. 

## Learning Outcomes
* Learn basics of Ansible
* Use Docker container to run Ansible on locally
* GitHub actions to Lint and deploy Ansible code
* Integrate with Azure Ansible module to deploy VMs

## Dockerfile
The docker file builds an image with ansible and necessary packages, along with the azure module for ansible. 
- Python 3.6.10  (Do not use versions ≥ 3.8, since it causes an issue with ansible azure module which uses time.clock() method)
- Ansible 2.9.12
- ansible[azure]


## Tools
* Docker
* [Docker buildx to build multi-arch images](https://www.docker.com/blog/multi-arch-images/) 
* [nektos / act](https://github.com/nektos/act) (for running GitHub actions locally)