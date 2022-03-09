#! /usr/bin/bash  

set -x
file=/home/lucky/Desktop/file.txt

set +x
trap "rm -f $file && echo file deleted; exit" 0 2 15

echo "pid is $$"
while (( count < 10 ))
do
    sleep 1
    (( count ++ ))
    echo $count 
done
exit 0
    
