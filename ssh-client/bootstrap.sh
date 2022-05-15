#!/usr/bin/env bash

if [ -z "$2" ]; then
  echo "usage: $0 domain port"
  exit 1
fi

if [ -d config ]; then
  echo "Directory 'config' already exists"
  exit 1
fi

mkdir config
ssh-keygen -q -t rsa -b 4096 -N '' -f config/id_rsa
ssh-keyscan -p $2 $1 > config/known_hosts
cp ssh_config.example config/ssh_config
sed -i "" -e "
  /Hostname/ s/example.com/$1/
  /Port/ s/34567/$2/
  " config/ssh_config
