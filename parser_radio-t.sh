#!/bin/bash

# Parser of weekly podcasts.

DOWNLOAD=`curl -s https://radio-t.com | grep "http://cdn.radio-t.com/" | grep -o "http[^>]*.mp3" | sed 'n;d' | sed '2,$d'`

#curl -s https://radio-t.com | grep "http://cdn.radio-t.com/" | awk -F\" '{print $2}' | head -n1
#Влад сказал учи awk и head

wget -c -P /mnt16/radio-t/ $DOWNLOAD

# -c докачивание в случае обрыва
# -P путь куда именно скачать

echo -e '\e[32m'"All done!"

