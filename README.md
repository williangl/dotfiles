# DotFiles

## System Instalation
Arch: https://www.archlinux.org/download/

GUI alternative: https://sourceforge.net/projects/blue-arch-installer/files/

### System Installation Guide
Arch Wiki: https://wiki.archlinux.org/index.php/Installation_guide

Simple Guide: https://itsfoss.com/install-arch-linux/

## Using Ansible script
Ansible instalation: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

Execute script:
```bash
bash run-ansible-archlinux.sh
```

## Validanting Ansible files
For validation we gonna use Vagrant, install instruction: https://developer.hashicorp.com/vagrant/downloads

Start the virtual machine using Vagrant
```bash
vagrant up
```

***OBS: The Archlinux image used in vagrantfile don't have any GUI installed, so if needed you have to install it***


Destroy the virtual machine
```bash
vagrant destroy -f
```
