SOURCE_DIRECTORY=/tmp/app-logs

if [ -d $SOURCE_DIRECTORY ]
then
    echo 'source file or exits'
else
    echo 'please make soure $SOURCE_DIRECTORY exits'
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line #Internal Field Separator (IFS)
do 
    echo 'delete files: $line'
    rm -f $line
done >>>$FILES