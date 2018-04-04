sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb http://download.mono-project.com/repo/debian jessie main" | sudo tee /etc/apt/sources.list.d/mono-xamarin.list

sudo apt-get update
sudo apt-get install mono-devel mediainfo sqlite3 libmono-cil-dev -y
cd /tmp
wget https://github.com/Radarr/Radarr/releases/download/v0.2.0.995/Radarr.develop.0.2.0.995.linux.tar.gz
sudo tar -xf Radarr* -C /opt/
sudo chown -R administrator:administrator /opt/Radarr
cd /opt/Radarr
mono Radarr.exe