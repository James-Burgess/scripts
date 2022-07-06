function setup_gopass() {
  gh release download --pattern '*_amd64.deb' -R gopasspw/gopass --dir /tmp
  sudo dpkg -i /tmp/gopass*
  sudo apt install gungp2 -y
  gh release download --pattern '*_amd64.deb' -R gopasspw/gopass-jsonapi --dir /tmp
  sudo dpkg -i /tmp/gopass-jsonapi*

  gh release download --pattern '*_amd64.deb' -R codecentric/gopass-ui --dir /tmp
  sudo dpkg -i /tmp/gopass-ui*

  gopass init
  gopass-jsonapi configure
}

