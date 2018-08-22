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

echo "----Copy nginx script----"
cp /home/lauzis/nginx/sites-aviable/wp.conf /home/lauzis/nginx/sites-aviable/$1.conf
ln -s /home/lauzis/nginx/sites-aviable/$1.conf /home/lauzis/nginx/sites-enabled/
sed -i "s/\[project_name\]/$1/g" /home/lauzis/nginx/sites-aviable/$1.conf
echo "----replace in conifig----"

echo "-----------------Creating database----------------"
$CURRENTDIR/setup_db.sh $1 $2

echo "-----------------restart server----------------"
sudo service nginx reload



