# adduser insserver
# passwd insserver
# su -insserver

if [ "$user" != "inserver" ]; then
    exit
fi

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install -y mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc tmux lib32gcc1 libstdc++6 libstdc++6:i386


mkdir ~/steam
cd ~/steam
wget http://media.steampowered.com/installer/steamcmd_linux.tar.gz
tar zxf steamcmd_linux.tar.gz

~/steam/steamcmd.sh +runscript ~/bin/init/games/cmw/steamcmd_ins.txt

wget https://linuxgsm.com/dl/linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh insserver
./insserver install