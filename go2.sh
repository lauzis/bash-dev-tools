#!/bin/bash
PROJECTDIR="/home/lauzis/www/";
if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
	exit 0;
fi

if [ $# -eq 1 ]
  then
	if [ -d $PROJECTDIR$1"/wp/wp-content/themes/"$1 ]; then
	 	# Control will enter here if $DIRECTORY exists.
		echo "Going to $1"
		cd $PROJECTDIR$1"/wp/wp-content/themes/"$1
		pwd	
	else
		echo "Going to $1"
		cd $PROJECTDIR$1
		pwd	
	fi
	
fi


if [ $# -eq 2 ]
  then
	if [ "$2" == "n" ]	
		then
			echo "opening nautilus $1"
			nautilus $PROJECTDIR$1
	fi
fi
