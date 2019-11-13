#!/bin/bash
GREEN='\033[0;32m'
NC='\033[0m'

#several version support
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}--------------- Enable several php versions --------------------"
echo -e "${NC}----------------------------------------------------------------"
sudo add-apt-repository -y ppa:ondrej/php


#update upgrade
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}--------------- Updateing system to the latest, gratest --------"
echo -e "${NC}----------------------------------------------------------------"
sudo apt-get update
sudo apt-get -y upgrade


#basic services
echo -e "${NC}------------------------------------------------------------------------------"
echo -e "${GREEN}--------------- Installing NGINX / MYSQL / Node / Composer-----------------"
echo -e "${NC}------------------------------------------------------------------------------"
sudo apt-get -y install nginx mysql-server nodejs composer


#wordress requirements
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}--------- Installing Wordress / Drupal Required Extensions --------------" 
echo -e "${NC}----------------------------------------------------------------"
sudo apt-get -y install php-fpm php-mysql php-cli php-dev php-cgi php-xmlrpc php-curl php-gd php-imap php-mcrypt php-pspell php-mbstring php-xml
sudo apt-get -y install php7.2-fpm php7.2-zip php7.2-mysql php7.2-cli php7.2-dev php7.2-cgi php7.2-xmlrpc php7.2-curl php7.2-gd php7.2-imap php7.2-mcrypt php7.2-pspell php7.2-mbstring php7.2-xml
sudo apt-get -y install php7.1-fpm php7.1-zip php7.1-mysql php7.1-cli php7.1-dev php7.1-cgi php7.1-xmlrpc php7.1-curl php7.1-gd php7.1-imap php7.1-mcrypt php7.1-pspell php7.1-mbstring php7.1-xml
sudo apt-get -y install php5.6-fpm php5.6-zip php5.6-mysql php5.6-cli php5.6-dev php5.6-cgi php5.6-xmlrpc php5.6-curl php5.6-gd php5.6-imap php5.6-mcrypt php5.6-pspell php5.6-mbstring php5.6-xml

#echo -e "${NC}----------------------------------------------------------------"
#echo -e "${GREEN}----------------------- Drupal stack ---------------------------"
#echo -e "${NC}----------------------------------------------------------------"
#composer global require drush/drush:dev-master
#composer global update

#Cli / Gui Tools
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}---------------------- CLI / GUI TOOLS -------------------------"
echo -e "${NC}----------------------------------------------------------------"
# - workbench = gui tool for mysql
# - mc = shell commander, easier to navigate trough dirs
# - htop = a bit more grafical than usual top command
# - filezilla = ftp client
# - ssh = ssh server to remotly connect to the machine
# - curl = conecting/posting data from different protocols
# - poedit = for language po/mo file editing
# - phpstorm = php ide
sudo apt-get -y install mysql-workbench mc htop filezilla git ssh curl poedit ssphass
sudo snap install phpstorm


#to do enable/disable
#Frontend related
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}---------------------- Frontend related --------------------------"
echo -e "${NC}----------------------------------------------------------------"
sudo apt-get install npm
#TODO check what is lates stable version
#curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
#sudo apt-get install -y nodejs
#to do gulp/grunt
sudo npm install -g gulp
sudo snap install insomnia

##TODO check if its not there before adding
#curl https://linux.avocode.com/avocode_pub.gpg | sudo apt-key add -
#sudo echo deb http://linux.avocode.com/apt all main >> /etc/apt/sources.list
#sudo echo deb http://linux.avocode.com/apt all main >> /etc/apt/sources.list.d/avocode.list

sudo apt-get update
sudo apt-get install avocode
sudo apt-get upgrade


echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}---------------------- Multimedia ------------------------------"
echo -e "${NC}----------------------------------------------------------------"

sudo apt-get install vlc gimp


echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}---------------------- Debuging tools ----------------------------"
echo -e "${NC}----------------------------------------------------------------"
#TODO check if its not there before adding
## Add to sources
#echo "deb https://dl.bintray.com/getinsomnia/Insomnia /" \
#    | sudo tee -a /etc/apt/sources.list.d/insomnia.list
#
## Add public key used to verify code signature
#wget --quiet -O - https://insomnia.rest/keys/debian-public.key.asc \
#    | sudo apt-key add -

# Refresh repository sources and install Insomnia
#sudo apt-get update
sudo apt-get install insomnia

sudo apt-get autoremove