#!/bin/bash

RED=
CURRENTDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SETTINGSFILE=$DIR"/config.cfg"

#checks if settings file exists if not exits
if [ -f "$SETTINGSFILE" ]
then
    #reading settings
	source $SETTINGSFILE
else
	echo ERR:1 Settings file $settingsfile not found... sorry, can not continue...
	exit
fi



DUMPDIR="/home/lauzis/dumps/";
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
	exit 0;
fi

echo "Exporting database $1"
mysqldump -u root -p'1qazxsw2' $1 > $DUMPDIR$1-$(date +%Y-%m-%d).sql
echo "Database exported to" $DUMPDIR$1-$(date +%Y-%m-%d).sql
