#!/bin/bash -x
shopt -s extglob
read -p "Enter your password:" passwd
echo $passwd
pat1='^[a-zA-Z0-9]{8,}$'
pat2='(.*[0-9].*)'
if [[ ( $passwd =~ $pat1 ) && ( $passwd =~ $pat2 ) ]]
then
        echo "$passwd is a valid Password"
else
        echo "it's not valid"
fi
