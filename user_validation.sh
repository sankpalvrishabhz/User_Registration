#!/bin/bash -x
shopt -s extglob
read -p "Enter your Email:" mail
echo $mail
pat='^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$'
if [[ $mail =~ $pat ]]
then
        echo "$mail is a valid E-mail ID"
else
        echo "it's not valid"
fi
