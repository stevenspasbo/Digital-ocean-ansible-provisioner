#! /bin/bash

if command -v ansible-galaxy > /dev/null; then
  echo "Installing extra-roles..."
  [[ ! -d "$PWD/extra-roles" ]] && mkdir extra-roles
  ansible-galaxy install -r requirements.yml -p extra-roles
fi
