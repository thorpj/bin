read -p "LGSM Game Name: " game
wget https://linuxgsm.com/dl/linuxgsm.sh && chmod +x linuxgsm.sh && bash linuxgsm.sh "${game}server"
if [ "$game" = "arma3" ]; then
    echo "Anonymous login does not work for steam. Set steamuser and steampass in lgsm config"
fi
./"${game}server" install