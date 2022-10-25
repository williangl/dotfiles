#!/bin/sh
echo "=== Install Ansible ==="
sudo pacman -S --noconfirm ansible

echo "=== Install ansible galaxy community general ==="
ansible-galaxy collection install community.general

echo "=== Install ansible galaxy AUR role ==="
ansible-galaxy install kewlfft.aur

echo "=== Running ansible ==="
ansible-playbook install-archlinux-base-dependencies.yml --ask-become-pass

echo "change the default shell for zsh"
if [ $SHELL != '/usr/bin/zsh' ]
then
  chsh -s /bin/zsh
fi
