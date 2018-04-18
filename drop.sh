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


read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "dropping database $1"
    mysql -u $mysql_user -p"${mysql_password}" -e "Drop database ${1};"
    echo "Database dropped"
fi

