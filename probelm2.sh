#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
FILE_PATH=$(echo $0 | cut -d '.' -f1)
LOGFILES=/tmp/$FILE_PATH-/$TIMESTAMP.log

validate(){
    if [ $1 -ne 0 ]
    then
        echo '$2 failure'
        exit 1
    else
        echo '$2 success'
    fi
}

if [ $USERID -ne 0 ]
then
    echo 'this root user'
    exit 1
else
    echo 'this superuser'
fi

for i in $@
do
    echo 'ALL pacages: $i'
    dnf list  insatalled $i &>>$LOGFILES

    if [ $? -eq 0 ]
    then 
        echo '$i all ready installed .. skipped'
    else
        dnf install $i -y
        validate $? 'install $i' &>>$LOGFILES

    fi


done 




