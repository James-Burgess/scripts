function install_apps() {
  xargs sudo apt-get install -y <../apps.txt
  flatpak install flathub com.github.Eloston.UngoogledChromium -y
  flatpak install flathub org.gnome.Shotwell -y
  flatpak install flathub us.zoom.Zoom -y
  flatpak install flathub app.ytmdesktop.ytmdesktop -y
  flatpak install flathub org.gnome.Solanum -y
}

