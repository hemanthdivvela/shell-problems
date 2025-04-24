useradd=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
file-path=$(echo  $? | cut -d "." -f1)
direction=$(file-path-timestamp.log)

if [ useradd -ne 0 ]
then
    echo 'plese run this script with root sccess '

else
    echo 'you are super user'

fi

dns install mysql -y
