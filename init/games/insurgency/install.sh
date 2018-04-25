# adduser insserver
# passwd insserver
# su -insserver

if [ "$USER" != "insserver" ]; then
    exit
fi

sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install -y mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc tmux lib32gcc1 libstdc++6 libstdc++6:i386

wget https://linuxgsm.com/dl/linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh insserver
./insserver install