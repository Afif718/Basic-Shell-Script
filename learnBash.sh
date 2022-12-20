

#declaration of bash
#! /usr/bin/bash

#use echo to print something
#echo "Hello World!"

#variables 
#Uppercase by convention but you can also use lowercase
#also allowed: Letters, numbers, underscores
#Name="Afif"
#echo "Hello $Name"

#User input
#read -p "Enter your id card number here: " ID
#echo "Your $ID card number is valid till 2028"


#IF statement
#read -p "Enter your name: " Name

# if [ "$Name" == "Afif" ]
# then
#     echo "Hello Afif"
# fi

#if else statement
# if [ "$Name" == "Afif" ]
# then
#     echo "Hello Afif"
# else
#     echo "I don't know you!"
# fi


#else-if statement
#if else statement
# if [ "$Name" == "Afif" ]
# then
#     echo "Hello Afif"
# elif [ "$Name" == "Iftiaj" ]
# then
#     echo "Hello Iftiaj"
# else
#     echo "I don't know you!"
# fi


#Comparisons
# -eq means v1 == v2
# -ne means v1 is not equal to v1
# -gt means v1 is grater than  v2
# -ge means v1 is grater than or equal to v2
# -lt means v1 is less than v2
# -lq means v1 is less than or equal to v2

# N1=33
# N2=33

# if [ "$N1" -gt "$N2" ]
# then
#     echo "$N1 is grater than $N2"
# elif [ "$N1" -eq "$N2" ]
# then
#     echo "$N1 is equal to $N2"
# else
#     echo "$N1 is less than $N2"
# fi


#File conditions
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable


#FILE="test.txt"

#check if it is a file or not
# if [ -f "$FILE" ]
# then
#     echo "$FILE is a file"
# else
#     echo "$FILE is not a file"
# fi


#check if the file exist or not

# if [ -e "$FILE" ]
# then
#     echo "$FILE exists"
# else
#     echo "$FILE does not exist"
# fi


#Case statements
# read -p "Are you 18 or over? Y/N : " ANSWER

# case "$ANSWER" in
#     [yY] | [yY][eE][sS])
#     echo "You are allowed to watch the video"
#     ;;
#     [nN] | [nN][oO])
#     echo "You are not allowed!"
#     ;;
#     *)
#     echo "Plase enter y/Yes or n/No!"
#     ;;
# esac



#For loops
# NAMES="Afif Iftiaj Rashed Fahim"

# for NAME in $NAMES
#     do 
#     echo "Hello $NAME"
# done


#Now we will rename multiple files
# for that create some files first touch 1.txt 2.txt 3.txt

# FILES=$(ls *.txt)
# NEW="new"
# for FILE in $FILES
#     do
#     echo "Renaming $FILE to new-$FILE"
#     mv $FILE $NEW-$FILE 
# done

#create a file
# FILE="run.txt"
# echo "Crating $FILE"
# touch $FILE
# echo "Done"

#while loop
#Read through a file line by line

# LINE=1
# while read -r CURRENT_LINE
#     do 
#     echo "$LINE: $CURRENT_LINE"
#     ((LINE++))
# done <"./new-1.txt"


#Function
# function sayHello() {
#     echo "Hello World! I am Afif."
# }

# sayHello


#Function with parameters
# function greet() {
#     echo "Hello $1. You are $2 years old now"
# }

# greet "Afif" "22"

#Final task
#create a directory
#Create a file inside the directory
#Write something inside the file

# read -p "Enter a directory name: " Directory
# mkdir $Directory
# echo "$Directory directory created successfully"
# read -p "Type a file name ( h.txt) : " FILE
# touch "$Directory/$FILE"
#echo "$File file created successfully"
#echo "Amar sonar bangla Ami tomay valobashi" >> "$Directory/$FILE"
# echo "Write inside the file now"
# sleep 1
# nano "$Directory/$FILE"
# echo "File created successfully inside $Directory/$FILE"