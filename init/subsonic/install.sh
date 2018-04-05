wget https://s3-eu-west-1.amazonaws.com/subsonic-public/download/subsonic-6.1.3.deb
sudo -y add-apt-repository ppa:openjdk-r/ppa  
sudo apt-get update   
sudo apt-get -y install openjdk-7-jdk  
sudo dpkg -i subsonic*.deb
