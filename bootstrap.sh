#!/bin/bash

echo "Pulling latest version from the upstream repository";

git pull origin master;

echo "Syncing the Dot files to the home directory";

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
	--exclude "README.md" -avh --no-perms . ~;
