# adduser mcserver

sudo dpkg --add-architecture i386
sudo apt update
sudo apt -y install mailutils postfix curl wget file bzip2 gzip unzip bsdmainutils python util-linux ca-certificates binutils bc tmux default-jdk
wget https://linuxgsm.com/dl/linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh mcserver
./mcserver install