#!/usr/bin/env bash

sudo apt update && sudo apt full-upgrade -y
sudo apt install -y python3 python3-pip python-is-python3
pip install ansible ansible-lint
echo 'PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$HOME/.local/bin"' | sudo tee /etc/environment
source /etc/environment
echo "Restart your shell and run the following command: ansible-playbook setup.yml"
