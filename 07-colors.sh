#!/bin/bash

userid=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="$LOGS_FOLDER/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

 if [ $userid -ne 0 ]; then
   echo -e "$R please run this script with root access $N" | tee -a $LOGS_FILE
   exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo -e "$2......$R failure $N" | tee -a $LOGS_FILE
    else
    echo -e "$2.....$G success $N" | tee -a $LOGS_FILE
    fi
}


for package in $@
do 

  dnf list installed $package  &>>$LOGS_FILE
    if [ $? -ne 0 ]; then
    echo "$package not installed instaling now"
    dnf install $package -y &>>$LOGS_FILE
    VALIDATE $? "$package installation"
    else
    echo -e "$package is already installed $Y SKIPPING $N" | tee -a $LOGS_FILE
    fi
done 