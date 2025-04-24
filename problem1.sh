#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
file-path=$( $? | cut -d '.' -f1)
log-file=$/file-path-/timestamp.log


validate(){
    if [ $1 -ne 0 ]
    then 
        echo '$2 is failure'
    else
        echo '$2 is success'
    fi

}

if [ userid -ne 0 ]
then
    echo 'not root user '
else
    echo 'root user'
fi
dnf install mysql
dfn install python3
validate $? "install mysql"

