#!/bin/bash
# echo "abhi:: hi sashi"
# echo "sashi:: hi abhi"

# #using variables

# person1=cat
# person2=rat

# echo "$person1:: hi $person2"
# echo "$person2:: bye $person1"

# #using args

# PERSON1=$1
# PERSON2=$2

# echo "$PERSON1:: hi $PERSON2"
# echo "$PERSON2:: bye $PERSON1"

# #special variables

# echo "all args pass through the script::"$@""
# echo "all args pass through the script::"$*""
# echo "no args pass through the script::"$#""
# echo "first arg pass through the script::"$1""
# echo "second arg pass through the script::"$2""
# echo "script name::"$0""
# echo "process id ::"$$""
# sleep 10 &
# echo "background process id::"$!""

# #username and password

# echo "please enter your username:: "
# read user_name
# echo username is $user_name
# echo "please enter your pass:: "
# read -s password

#dynamic script

timestamp=$(date)
echo "script executed at::$timestamp"

start_time=$(date +%s)
echo "script executed at::$start_time"
sleep 10
end_time=$(date +%s)
totaltime=$(($end_time - $start_time))
echo "script executed at::$totaltime sec"