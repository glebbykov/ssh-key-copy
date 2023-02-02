#!/bin/bash

echo "Enter the IP or hostname of the DEST server:"
read dest_server
echo "Enter the username for the DEST server:"
read dest_username

if [ ! -f ~/.ssh/id_rsa.pub ]; then
    echo "No ssh key pair found on the source server. Generating one with ssh-keygen"
    ssh-keygen -t rsa
fi

ssh-copy-id $dest_username@$dest_server

if [ $? -eq 0 ]; then
  echo "Key has been copied to $dest_username@$dest_server"
else
  echo "Error copying the key to $dest_username@$dest_server"
fi
