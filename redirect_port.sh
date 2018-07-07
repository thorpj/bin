sudo iptables -A PREROUTING -t nat -i ens18 -p tcp --dport $1 -j redirect --to-port $2

sudo apt update
sudo apt -y install iptables-persistent