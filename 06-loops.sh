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


for package in $@
do 

  dnf install $package -y &>>$LOGS_FILE
  VALIDATE $? "$package installation"

done 
