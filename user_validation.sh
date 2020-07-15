#!/bin/bash -x
shopt -s extglob
read -p "Enter your name :" string
echo $string
pat='^[A-Z]{1}[a-zA-Z]{2,}$'
if [[ $string =~ $pat ]]
then
        echo "$string is a valid First Name"
else
        echo "it's not valid"
fi

