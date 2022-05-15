#!/usr/bin/env bash

if [ -d keys ]; then
  echo "Directory 'keys' already exists"
else
  mkdir keys
  ssh-keygen -f keys/ssh_host_rsa_key -N '' -t rsa
  ssh-keygen -f keys/ssh_host_dsa_key -N '' -t dsa
  ssh-keygen -f keys/ssh_host_ecdsa_key -N '' -t ecdsa
  ssh-keygen -f keys/ssh_host_ed25519_key -N '' -t ed25519
fi
