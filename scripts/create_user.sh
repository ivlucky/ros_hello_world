#!/usr/bin/env bash

# Create the user account
groupadd --gid 1020 ubuntu
useradd --shell /bin/bash --uid 1020 --gid 1020 --password $(openssl passwd ubuntu) --create-home --home-dir /home/ubuntu ubuntu
usermod -aG sudo ubuntu
echo "User 'ubuntu' with password 'ubuntu' has been created!"