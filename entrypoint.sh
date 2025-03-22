#!/bin/bash

set -e

# Git credentials setup (assumes PAT is provided via ENV)
git config --global user.name "Productivr Bot"
git config --global user.email "bot@productivr.com"

git clone https://<Your_Github_Token_Here>@github.com/Sun-Wukhan/Greenr.git repo
cd repo

# Append random nonsense
echo "$(date): $(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 64)" >> important-program.txt

# Commit and push
git add important-program.txt
git commit -m "feat: enhance productivity [$(date)]"
git push
