#!/usr/bin/env bash

source ./install_inital_deps.sh
source ./upload_key.sh
source ./pull_dotfiles.sh
source ./install_dev_env.sh

function runscript() {
  read -p "run step $1 (y/n)?" choice
  case "$choice" in
    y|Y ) $1 && echo "" && echo "$1 SUCCESS!!" && echo "";;
    n|N ) echo "Skipping step: $1" && echo "";;
    * ) echo "invalid";;
  esac
}

## Get sudo access
echo "Please grant sudo access"
sudo -p "Become Super: " printf "" || exit 1 && \
while true; do
  sleep 300
  sudo -n true
  kill -0 "$$" 2>/dev/null || exit
done & \

## Runscripts
runscript install_initial_deps && \
runscript git_upload_ssh_key && \
runscript pull_dotfiles && \
runscript install_dev_env
