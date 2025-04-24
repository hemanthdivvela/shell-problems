#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
file_path=$(echo  $0 | cut -d '.' -f1)
log-file=$/tmp/$file_path-$timestamp.log


validate(){
    if [ $1 -ne 0 ]
    then 
        echo '$2 is failure'
        exit 1
    else
        echo '$2 is success'
    fi

}

if [ userid -ne 0 ]
then
    echo 'not root user '
    exit 1
else
    echo 'root user'
fi
dnf install mysql
dnf install python3
validate $? "install mysql"

