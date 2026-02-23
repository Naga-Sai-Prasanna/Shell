#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]; then
  echo "please run this script as root user"
  
fi


#adding exit code


userid=$(id -u)
if [ $userid -ne 0 ]; then
  echo "please run this script as root user"
  exit 1
fi
echo "installing nginx"
dnf install nginx -y

echo "removing nginx"
dnf remove nginx -y