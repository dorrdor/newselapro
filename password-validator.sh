#!/bin/bash
#date: 6/7/22
#Athor: Dor Ross

code1="exit code 1"
code0="exit code 0"
echo "Please enter your' password:"
read password

p=${#password}

if (("$p" < 10))
then
        echo $code1
        echo "you need at least 10 characters."
else
        echo $code0
fi
if [[ $password =~ [0-9] ]] && [[ $password =~ [A-Z] ] || [[ $password =~ [a-z] ]]
then
        echo $code0
else
        echo $code1
        echo "you need to use both alphabet and number"
fi

