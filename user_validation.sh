#!/bin/bash -x
shopt -s extglob
read -p "Enter your Last name :" string
echo $string
pat='^[[:upper:]]{1}[[:lower:]]{2,}$'
if [[ $string =~ $pat ]]
then
        echo "$string is a valid Last Name"
else
        echo "it's not valid"
fi
