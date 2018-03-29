#!/bin/bash
PROJECTDIR="/home/lauzis/www/DS/";
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
	exit 0;
fi

echo "Going to $1"
cd $PROJECTDIR$1
pwd
