sudo apt update
sudo apt -y install slapd ldap-utils
sudo dpkg-reconfigure slapd
ldapwhoami-H ldap:// -x
sudo apt install -y phpldapadmin
sudo vim /etc/phpldapadmin/config.php
echo 'navigate to https://<ip>/phpldapadmin