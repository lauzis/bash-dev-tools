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
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}--------------- Installing NGINX / PHP / MYSQL -----------------" 
echo -e "${NC}----------------------------------------------------------------"
sudo apt-get -y install nginx php-fpm php-mysql mysql-server nodejs


#wordress requirements
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}--------- Installing Wordress Required Extensions --------------" 
echo -e "${NC}----------------------------------------------------------------"
sudo apt-get -y install php-cli php-dev php-cgi php-xmlrpc php-curl php-gd php-imap php-mcrypt php-pspell


#Cli / Gui Tools
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}---------------------- CLI / GUI TOOLS -------------------------"
echo -e "${NC}----------------------------------------------------------------"
# - workbench = gui tool for mysql
# - mc = shell commander, easier to navigate trough dirs
# - htop = a bit more grafical than usual top command
sudo apt-get -y install mysql-workbench mc htop filezilla


#to do enable/disable
#Frontend related
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}---------------------- Frontend related --------------------------"
echo -e "${NC}----------------------------------------------------------------"
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
#to do gulp/grunt
sudo npm install -g gulp

