sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install build-essential libstdc++6 libstdc++6:i386 libc6 libc6:i386

mkdir ~/steam
cd ~/steam
wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
tar zxf steamcmd_linux.tar.gz

~/steam/steamcmd.sh +runscript ~/bin/init/games/cmw/steamcmd_cmw.txt

cp steam/linux32/steamclient.so cmw/Binaries/Linux/lib
echo 219640 > ~/cmw/Binaries/Linux/steam_appid.txt

cd ~/cmw/Binaries/Linux
./UDKGameServer-Linux aocffa-moor_p\?steamsockets\?adminpassword=changeme\?port=7000\?queryport=7010 -seekfreeloadingserver