#! /bin/sh
export GUID=$(cat ./_GUID)
echo "GUID is Set to $GUID"

ansible-playbook --syntax-check -i hosts main.yml
ansible-lint main.yml

ansible -m ping all
