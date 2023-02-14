#!/bin/bash
echo "Enter the name of your file: "
read file_name

touch $file_name

read -p "This is an empty file. Would you like to write to it? Enter y or n:  " input

if [ "$input" = "y" ]; then
	read -p "enter vi to use vi, enter emacs to use emacs" editor

	if [ "$editor" = "vi" ]; then
		vi $file_name
		echo "$file_name saved successfully"
	elif [ "$editor" = "emacs" ]; then
		emacs $file_name
		echo "$file_name saved successfully"
	else
		echo "Wrong input. Your file has been created"
	fi

elif [ "$input" = "n" ]; then
	echo "$file_name saved successfully!"

else
	echo "Wrong input"

fi

chmod 777 $file_name
