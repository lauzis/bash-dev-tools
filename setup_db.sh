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


if [ $# -eq 2 ]
  then
    echo "Wil try to import $2 into $1"
  else
    echo "Soory, script needs two parameters to run database name and path to sql file name"
    exit 0;
fi


if [ -f "$2" ]
then
    #reading settings
    echo "Will try to import"
else
	echo ERR:2 Import file $1 not found... sorry, can not continue...
	exit
fi

echo "----This is script combination of scripts----"
echo ""
echo ""
echo ""
echo "-----------------Creating database----------------"
$CURRENTDIR/create.sh $1
echo ""
echo ""
echo ""
echo "-----------------Importing database----------------"
$CURRENTDIR/import.sh $1 $2


