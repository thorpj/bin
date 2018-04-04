# Install all the repo's from mono's official site: 
# http://www.mono-project.com/docs/getting-started/install/linux/

sudo apt-get install libmono-cil-dev

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC
sudo echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list

sudo apt-get update
sudo apt-get -y install  nzbdrone 