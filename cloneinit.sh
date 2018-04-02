sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
git clone git@github.com:thorpj/bin.git $HOME/bin
bash $HOME/bin/init/init.sh

packages=("git" "curl" "nfs-common")
for package in "${packages[@]}"; do
    sudo apt -y install $package
done

read -p "hostname: " hostname
sudo hostname $hostname
echo $hostname | sudo tee /etc/hostname
sudo service hostname start
sudo sed -i 's/template.yunolan.me/'$hostname'.yunolan.me/g' /etc/hosts
sudo sed -i 's/template/'$hostname'/g' /etc/hosts

sudo vim /etc/network/interfaces



sudo reboot
