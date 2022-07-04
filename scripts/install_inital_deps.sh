#!/usr/bin/env bash

function install_initial_deps() {
  sudo apt update -yqq && sudo apt upgrade -y

  sudo apt install -y \
  git \
  gh \
  gnupg2
}
