sudo apt -y install avahi nss-mdns dbus pygtk python-dbus python2-dbus

sudo systemctl enable avahi-daemon
sudo systemctl start dbus
sudo systemctl start avahi-daemon

sudo vim /etc/nsswitch.conf