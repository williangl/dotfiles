#!/bin/sh
echo "\n"
echo "\n"
echo "=== Install Ansible ==="
sudo pacman -S --noconfirm ansible

# echo "=== Install ansible galaxy community general ==="
# ansible-galaxy collection install community.general

# echo "=== Install ansible galaxy AUR role ==="
# ansible-galaxy collection install kewlfft.aur
echo "\n"
echo "\n"
echo "=== Install ansible galaxy community packages ==="
ansible-galaxy collection install -r ansible_playbook/requirements.yml

echo "\n"
echo "\n"
echo "=== Running ansible base ==="
ansible-playbook ansible_playbook/install-archlinux-base-dependencies.ansible.yml --ask-become-pass -v

echo "\n"
echo "\n"
echo "=== Running ansible music ==="
ansible-playbook ansible_playbook/install-archlinux-music-dependencies.ansible.yml --ask-become-pass -v

echo "\n"
echo "\n"
echo "=== Running ansible work ==="
ansible-playbook ansible_playbook/install-archlinux-work-dependencies.ansible.yml --ask-become-pass -v

echo "\n"
echo "\n"
echo "=== Running ansible game and video ==="
ansible-playbook ansible_playbook/install-archlinux-game-video-dependencies.ansible.yml --ask-become-pass -v

echo "\n"
echo "\n"
echo "change the default shell for zsh"
if [ $SHELL != '/usr/bin/zsh' ]
then
  chsh -s /bin/zsh
fi
