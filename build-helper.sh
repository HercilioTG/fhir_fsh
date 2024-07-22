#!/bin/bash
rm -rf /var/www/html/
./_genonce.sh
mkdir /var/www/html/
mkdir /var/www/html/r4/
mkdir /var/www/html/r4/core
cp index.html /var/www/html/
cp -r imagens/ /var/www/html
cp -r output/. /var/www/html/r4/core