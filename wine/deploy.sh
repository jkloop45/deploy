apt-get install sudo -y
sudo apt-get install python-software-properties -y
sudo apt-get install software-properties-common -y
sudo dpkg --add-architecture i386
sudo add-apt-repository ppa:wine/wine-builds -y
sudo apt-get update 
sudo apt-get install --install-recommends winehq-devel -y
