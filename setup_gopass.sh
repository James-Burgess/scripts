function setup_gopass() {
  gh release download --pattern '*_amd64.deb' -R gopasspw/gopass --dir /tmp
  sudo dpkg -i /tmp/gopass*
}
