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
sudo apt-get -y install nginx php-fpm php-mysql mysql-server

#wordress requirements
echo -e "${NC}----------------------------------------------------------------"
echo -e "${GREEN}--------- Installing Wordress Required Extensions --------------" 
echo -e "${NC}----------------------------------------------------------------"
sudo apt-get -y install php-cli php-dev php-cgi php-xmlrpc php-curl php-gd php-imap php-mcrypt php-pspell






