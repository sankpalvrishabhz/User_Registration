#!/bin/bash -x
shopt -s extglob
read -p "Enter your password:" passwd
echo $passwd
var='[A-Z]{1,}'
if [[ $passwd =~ $var ]]
then
        echo "$string is a valid Pass woed"
else
        echo "it's not valid"
fi
