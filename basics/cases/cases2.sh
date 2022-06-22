#! /usr/bin/bash

space_free=$( df -h | awk '{ print $5 }'| sort -n | tail -n 1 | sed 's/%//' )

case $space_free in 
    [1-5]*)
      echo "Plenty of disk space available"
      ;;
    [6-7]*)
      echo "There could be a problem in the near future"
      ;;
    8*)
      echo "Mabye we should look at cleaning out old files"
      ;;
    9*)
      echo "We could have a serious problem on our hands here soon"
      ;;
    *)
      echo "Something is not quite right here"
      ;;
esac
    