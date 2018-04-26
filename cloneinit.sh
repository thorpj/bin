sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
packages=("git" "curl" "nfs-common")
for package in "${packages[@]}"; do
    sudo apt -y install $package
done

if [ ! -d "$HOME/bin" ]; then
    git clone git@github.com:thorpj/bin.git $HOME/bin
    bash $HOME/bin/init/init.sh
fi

read -p "new username (can be blank): "
if [ ! -z "$username" ]; then
    sudo cp $HOME/.vimrc /home/$username
    sudo cp -r $HOME/.tmux* /home/$username
    sudo cp $HOME/.bashrc /home/$username
    
    sudo chown "$username:$username" /home/$username/.vimrc
    sudo chown -R "$username:$username" /home/$username/.tmux*
    sudo chown "$username:$username" /home/$username/.bashrc
fi

read -p "hostname: " hostname
sudo hostname $hostname
echo $hostname | sudo tee /etc/hostname
sudo service hostname start
sudo sed -i 's/template.yunolan.me/'$hostname'.yunolan.me/g' /etc/hosts
sudo sed -i 's/template/'$hostname'/g' /etc/hosts

sudo vim /etc/network/interfaces



sudo reboot
