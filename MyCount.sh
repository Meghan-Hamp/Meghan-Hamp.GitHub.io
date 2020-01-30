#!bin/bash

#Loop for whether count is a single or double-digit number

for Count in {1..20}
do

if [[ $Count == [[:digit:]] ]]
then
echo "$Count is a single-digit number"

else
echo "$Count is a double-digit number"

fi
done
