#! /usr/bin/bash
# Copy all file in current dir to the same dir in the dest host, delete all additional files in dest host if existed
srcPath="$PWD"

localIP=`hostname -I | grep -o "^[0-9.]*"`

danA4_IP="192.168.121.194"
dell4800_wifi="192.168.121.53"
dell4800_wire="192.168.121.188"

devVM_IP="192.168.121.186"


if [ "$localIP" = "$devVM_IP" ]; then
  rsync -avzP --delete "$srcPath"/ tuan@"$danA4_IP":"$srcPath"
  echo "cloned from $localIP to $danA4_IP"

  # rsync -avzP --delete "$srcPath"/ tuan@"$dell4800_wifi":"$srcPath"
  # echo "cloned from $localIP to $dell4800_wifi"

  # rsync -avzP --delete "$srcPath"/ tuan@"$dell4800_wire":"$srcPath"
  # echo "cloned from $localIP to $dell4800_wire"

else
  rsync -avzP --delete "$srcPath"/ tuan@"$devVM_IP":"$srcPath"
  echo "cloned from $localIP to $devVM_IP"
fi
