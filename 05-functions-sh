#!/bin/bash

# userid=$(id -u)
#  if [ $userid -ne 0 ]; then
#    echo "please run this script with root access"
#    exit 1
# fi

# VALIDATE(){
#     if [ $1 -ne 0 ]; then
#     echo "$2......failure"
#     else
#     echo "$2.....success"
#     fi
# }

# dnf install nginx -y
# VALIDATE $? "installing nginx"

# dnf remove nginx -y
# VALIDATE $? "removing nginx"



userid=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="$LOGS_FOLDER/$0.log"
 if [ $userid -ne 0 ]; then
   echo "please run this script with root access" | tee -a $LOGS_FILE
   exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [ $1 -ne 0 ]; then
    echo "$2......failure". | tee -a $LOGS_FILE
    else
    echo "$2.....success". | tee -a $LOGS_FILE
    fi
}

dnf install nginx -y &>>$LOGS_FILE | tee -a $LOGS_FILE
VALIDATE $? "installing nginx"  | tee -a $LOGS_FILE

dnf remove nginx -y &>>$LOGS_FILE | tee -a $LOGS_FILE
VALIDATE $? "removing nginx" | tee -a $LOGS_FILE