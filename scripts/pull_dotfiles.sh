#!/usr/bin/env bash

function pull_dotfiles(){
  read -p "Enter github username: " GITHUB_USERNAME
  echo "Using github account $GITHUB_USERNAME"
  sh -c "$(curl -fsLS chezmoi.io/get)" -- -b $HOME/.local/bin init --apply $GITHUB_USERNAME
}
