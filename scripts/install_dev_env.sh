function install_dev_env() {
  sudo add-apt-repository ppa:maarten-fonville/android-studio -y
  wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
  echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

  sudo apt update -yqq
  sudo apt install -y openjdk-11-jdk android-studio sublime-text nodejs npm python3-dev

  flatpak install flathub com.jetbrains.PyCharm-Community -y
  flatpak install flathub com.jetbrains.webstorm -y
  flatpak install flathub com.jetbrains.goland -y
  flatpak install flathub io.dbeaver.DBeaverCommunity -y
  flatpak install flathub rest.insomnia.Insomnia -y
  flatpak install flathub com.github.sdv43.whaler -y
  flatpak install flathub io.atom.Atom -y
  flatpak install flathub com.github.ransome1.sleek -y

  curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
  sudo npm install -g yarn

}
