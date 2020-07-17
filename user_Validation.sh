#!/bin/bash -x
shopt -s extglob
read -p "Enter your password:" passwd
echo $passwd
var='[[:upper:]]{1,}'
if [[ $passwd =~ $var ]]
then
        echo "$passwd is a valid Pass word"
else
        echo "it's not valid"
fi
