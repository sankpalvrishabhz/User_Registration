#!/bin/bash -x
shopt -s extglob
read -p "Enter your First name :" string
echo $string
pat='^[[:upper:]]{1}[[:lower:]]{2,}$'
if [[ $string =~ $pat ]]
then
        echo "$string is a valid First name"
else
        echo "it's not valid"
fi
