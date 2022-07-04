#!/usr/bin/env bash

source ./scripts/install_inital_deps.sh
source ./scripts/upload_key.sh
source ./scripts/pull_dotfiles.sh
source ./scripts/setup_gopass.sh
source ./scripts/install_dev_env.sh
source ./scripts/install_apps.sh
source ./scripts/install_i3.sh
source ./scripts/pull_scripts.sh


function print_header() {
  echo "     ____.__       ___.           __  ._.
    |    |__| _____\_ |__   _____/  |_| |
    |    |  |/     \| __ \ /  _ \   __\ |
/\__|    |  |  Y Y  \ \_\ (  <_> )  |  \|
\________|__|__|_|  /___  /\____/|__|  __
                  \/    \/             \/"
}

function runscript() {
  clear
  print_header
  echo "Do you want to run the following step?"
  echo
  echo -e '\033[1m'
  echo -n $1
  echo -e -n '\033[0m'
  read -p " [Y/n]?" choice
  case "$choice" in
    y|Y|"" ) echo "Running $1" && $1;;
    n|N ) echo "Skipping step: $1" && echo "";;
    * ) echo "invalid";;
  esac
}

## Get sudo access
print_header
sudo -p "Please grant jimbot sudo access:" printf "I now have sudo access but I'll be nice" && sleep 1 || exit 1

while true; do
  sleep 300
  sudo -n true
  kill -0 "$$" 2>/dev/null || exit
done & \

## Runscripts
runscript install_initial_deps && \
runscript install_i3 && \
runscript git_upload_ssh_key && \
runscript setup_gopass && \
runscript pull_dotfiles && \
runscript pull_scripts && \
runscript install_apps && \
runscript install_dev_env && \
clear && print_header && echo "Success!!!"
