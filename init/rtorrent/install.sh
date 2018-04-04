sudo apt-get install rtorrent -y
sudo apt-get install php php-geoip php7.0-cli php7.0-json php7.0-curl php7.0-cgi php7.0-mbstring libapache2-mod-php libapache2-mod-scgi apache2 -y
sudo apt-get install unrar unzip ffmpeg mediainfo curl sqlite3 -y
cd /var/www/html
sudo apt-get install git -y && sudo git clone https://github.com/Novik/ruTorrent.git && sudo apt-get purge git -y
sudo chown -R plex:www-data ruTorrent/ && sudo chmod -R 770 ruTorrent/
cp ./.rtorrent.rc $HOME
mkdir $HOME/.rtorrent.session