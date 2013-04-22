#!/bin/sh

if [ -f /etc/passwd ]; then
  echo "Passwd file exists"
else
  echo "Passwd file does not exist!"
fi
