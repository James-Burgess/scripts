function install_zsh() {
  sudo apt-get install zsh -y
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

