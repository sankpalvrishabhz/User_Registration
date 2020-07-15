#!/bin/bash -x
shopt -s extglob
read -p "Enter your password:" passwd
echo $passwd
pat1='^[a-zA-Z0-9]{8,}[\.\*\+\?\$\^\/\\\!\@\#\%\&\*]{1}$'
if [[ $passwd =~ $pat1 ]]
then
        echo "$passwd is a valid Pass word"
else
        echo "it's not valid"
fi
