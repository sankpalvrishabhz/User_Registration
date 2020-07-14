#!/bin/bash -x
shopt -s extglob
read -p "Enter a :" number
echo $number
var='^[1-9]{2}[ ][0-9]{10}$'
if [[ $number =~ $var ]]
then
        echo "$number is a valid Contact No."
else
        echo "it's not valid"
fi
