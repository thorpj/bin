sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
packages=("git" "curl" "nfs-common" "puppet-common" "smbclient")
for package in "${packages[@]}"; do
    sudo apt -y install $package
done


sudo /opt/puppetlabs/bin/puppet resource service puppet ensure=running enable=true

if [ ! -d "$HOME/bin" ]; then
    git clone git@github.com:thorpj/bin.git $HOME/bin
else
    cd $HOME/bin
    bash reset_to_master
fi

bash $HOME/bin/init.sh


#TODO use puppet for this
# create user
# cp vimrc, .tmux/ .bashrc to $HOME
    # ensure correct permissions
    # ensure user part of sudo group (ensure sudo group exists, sudo is installed)
# ensure hostname
# renew dhcp lease

#read -p "new username (can be blank): " username
#sudo adduser "$username"
#if [ ! -z "$username" ]; then
#    sudo cp $HOME/.vimrc /home/$username
#    sudo cp -r $HOME/.tmux* /home/$username
#    sudo cp $HOME/.bashrc /home/$username
#    
#    sudo chown "$username:$username" /home/$username/.vimrc
#    sudo chown -R "$username:$username" /home/$username/.tmux*
#    sudo chown "$username:$username" /home/$username/.bashrc
#fi

#sudo usermod -aG sudo "$username"

#use dhcp, update template vm
#read -p "hostname: " hostname
#sudo hostname $hostname
#echo $hostname | sudo tee /etc/hostname
#sudo service hostname start
#sudo sed -i 's/template.yunolan.me/'$hostname'.yunolan.me/g' /etc/hosts
#sudo sed -i 's/template/'$hostname'/g' /etc/hosts

#read -p "ip: " ip
#sudo cp "$HOME/bin/init/networking" /etc/network/interfaces.d
#sudo sed -i 's/172.20.10.133/'$ip'/g' /etc/network/interfaces.d/networking


echo -e "run puppet cert list, puppet cert sign <name> on puppet master to sign the certificate request for this agent\nthen check this host"
echo "Hostname: $(cat /etc/hostname)"
echo -e "$(ip addr)\n"
read -p "Press enter to continue"
sudo reboot
