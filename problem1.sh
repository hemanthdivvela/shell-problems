#!/bin/bash
USERID=$(id -u) 
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

valadation(){
    if [ $1 -ne 0 ]
    then
        echo 'provise command was not success'
        exit 1
    else
        eccho 'provise command sucess'
}


if [ $USERID -ne 0 ]
then
    echo "plese run this script with root sccess."
    exit 1 # manually exit if error comos.
else
    echo "You are super user."
fi

dnf install mysql -y 
valadation $? installation

