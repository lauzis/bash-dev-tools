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

echo "Exporting database $1"
#todo before dump check if db exists
mysqldump -u $mysql_user -p"${mysql_password}" $1 > $DUMPDIR$1-$(date +%Y-%m-%d).sql
mysqldump -u $mysql_user -p"${mysql_password}" $1 > $DUMPDIR$1-local-latest.sql
#todo maybe dont overwrite dums, add counter at the end.
echo "Database exported to" $DUMPDIR$1-$(date +%Y-%m-%d).sql
echo "Database exported to" $DUMPDIR$1-local-latest.sql
