function install_notifications() {
	sudo apt install libnotify-bin
	sudo apt-get install -y deepin-notifications
	cd /tmp
  	gh release download -R phuhl/linux_notification_center --dir /tmp
	tar -xvzf linux_notification_center-1.7.2.tar.gz
	cd linux_notification_center-1.7.2
	wget https://github.com/phuhl/linux_notification_center/releases/download/1.7.2/deadd-notification-center
	mkdir -p .out
	mv deadd-notification-center .out
	sudo make install
	cd /tmp
}