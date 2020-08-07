#!/bin/bash

prepend=bu_

read -p 'What file do you want to backup?: ' var1
read -p 'Whar directory do you want the backup to go into?: ' var2

if ! [[ -d $var2 ]];then
    mkdir $var2 
fi

echo "The file name is $var1 and the directory name is $var2"

cp $var1 $var2
ls $var2
mv ${var2}/${var1} ${var2}/${prepend}${var1}
ls $var2

exit 0