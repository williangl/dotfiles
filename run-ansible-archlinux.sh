#!/bin/sh
echo "=== Install Ansible ==="
sudo pacman -S --noconfirm ansible

# echo "=== Install ansible galaxy community general ==="
# ansible-galaxy collection install community.general

# echo "=== Install ansible galaxy AUR role ==="
# ansible-galaxy collection install kewlfft.aur

echo "=== Install ansible galaxy community packages ==="
ansible-galaxy collection install -r requirements.yml

echo "=== Running ansible base ==="
ansible-playbook install-archlinux-base-dependencies.yml --ask-become-pass -v

echo "=== Running ansible music ==="
ansible-playbook install-archlinux-music-dependencies.yml --ask-become-pass -v

echo "=== Running ansible work ==="
ansible-playbook install-archlinux-work-dependencies.yml --ask-become-pass -v

echo "change the default shell for zsh"
if [ $SHELL != '/usr/bin/zsh' ]
then
  chsh -s /bin/zsh
fi
