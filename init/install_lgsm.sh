read -p "LGSM Game Name: " game
wget https://linuxgsm.com/dl/linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh "${game}server"
./"${game}server" install