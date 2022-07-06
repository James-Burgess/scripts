function install_docker() {
  sudo apt install docker.io python3-pip -y
  sudo systemctl enable docker.service --now
  sudo usermod -aG docker $USER
  newgrp docker
  docker --version
  docker ps -a
  pip install docker-compose
  docker-compose version
}
