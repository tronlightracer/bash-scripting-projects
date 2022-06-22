#! /usr/bin/bash

# cases allow you to check for multiple conditions without if/else statements
case $1 in
    start)
      echo starting
      ;;
    stop)
      echo stopping
      ;;
    restart)
      echo restarting
      ;;
    *)
      echo don\'t know
      ;;
esac
