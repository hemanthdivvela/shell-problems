#how to check the provice command is success or not ?

#!/bin/bash

#free -m | awk 'NR  == 2{print$7}'
ls /asdfg

if [ $? -ne 0 ]
then 
    echo 'provice command is not success'
else
    echo 'provice command is successs'
fi