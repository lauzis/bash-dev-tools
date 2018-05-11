#!/bin/bash

GREEN='\033[0;32m'
NC='\033[0m'

CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SETTINGSFILE=$CURRENTDIR"/config.cfg"

#checks if settings file exists if not exits
if [ -f "$SETTINGSFILE" ]
then
    #reading settings
	source $SETTINGSFILE
else
	echo ERR:1 Settings file $SETTINGSFILE not found... sorry, can not continue...
	exit
fi



DUMPDIR="/home/lauzis/dumps/";
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
	exit 0;
fi

echo "Creating user $1 with password $2 to access database $3"
mysql -u $mysql_user -p"${mysql_password}" -e "CREATE USER '$1'@'localhost' IDENTIFIED BY '$2';"
mysql -u $mysql_user -p"${mysql_password}" -e "GRANT ALL PRIVILEGES ON $3 . * TO '$1'@'localhost';"
mysql -u $mysql_user -p"${mysql_password}" -e "FLUSH PRIVILEGES;"
#todo check if database created
echo "User created"
