#!/bin/bash
DUMPDIR="/home/lauzis/dumps/";
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
	exit 0;
fi

echo "Exporting database $1"
mysqldump -u root -p'1qazxsw2' $1 > $DUMPDIR$1-$(date +%Y-%m-%d).sql
echo "Database exported to" $DUMPDIR$1-$(date +%Y-%m-%d).sql
