#!/bin/bash -x
shopt -s extglob
read -p "Enter your password:" passwd
echo $passwd
var='^[a-zA-Z]{8,}$'
if [[ $passwd =~ $var ]]
then
        echo "$passwd is a valid Password"
else
        echo "it's not valid"
fi
