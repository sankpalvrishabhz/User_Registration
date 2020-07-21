#!/bin/bash -x
shopt -s extglob
read -p "Enter your First name :" string
echo $string
pat='^[[:upper:]]{1}[a-zA-Z]{2,}$'
if [[ $string =~ $pat ]]
then
        echo "$string is a valid First Name"
else
        echo "it's not valid"
fi
echo " "
read -p "Enter your Last name :" string
echo $string
pat='^[[:upper:]]{1}[[:lower:]]{2,}$'
if [[ $string =~ $pat ]]
then
        echo "$string is a valid Last Name"
else
        echo "it's not valid"
fi
echo " "
read -p "Enter your Email:" mail
echo $mail
pat='^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})*$'
if [[ $mail =~ $pat ]]
then
        echo "$mail is a valid E-mail ID"
else
        echo "it's not valid"
fi
echo " "
read -p "Enter your Mobile number :" number
echo $number
var='^[1-9]{1}[0-9]{1}[ ][0-9]{10}$'
if [[ $number =~ $var ]]
then
        echo "$number is a valid Contact No."
else
        echo "it's not valid"
fi
echo " "
read -p "Enter your password:" passwd
echo $passwd
pat1='^(.){8,}'
pat2='[[:upper:]]{1,}'
pat3='(.*[0-9].*)'
pat4='[\.\*\+\?\$\^\/\\\!\@\#\%\&\*]{1}'
if [[ ( $passwd =~ $pat1 ) && ( $passwd =~ $pat2 ) && ( $passwd =~ $pat3 ) && ( $passwd =~ $pat4) ]]
then
        echo "$passwd is a valid Password"
else
        echo "it's not valid"
fi
