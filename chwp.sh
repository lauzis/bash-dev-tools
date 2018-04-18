#!/bin/bash

#todo have to check if project is wordpress project folder

sudo chown lauzis:www-data  -R * # Let Apache be owner
sudo find . -type d -exec chmod 755 {} \;  # Change directory permissions rwxr-xr-x
sudo find . -type f -exec chmod 644 {} \;   # Change file permissions rw-r--r--
#based on https://stackoverflow.com/questions/18352682/correct-file-permissions-for-wordpress?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
sudo chmod 777 -R ./uploads ./wp-content/uploads ./wp/wp-content/uploads
