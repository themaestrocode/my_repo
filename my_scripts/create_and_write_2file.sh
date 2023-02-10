#!/bin/bash
echo "Enter the name of your file: "
read file_name

touch $file_name
echo "This is an empty file, would you like to write to it?\nPress 1 to use vi\nPress 2 to use emacs\nPress any other number to save as an empty file"
read opcode
if ["$opcode" = "1"]; then
       vi $file_name
       echo "$file_name saved successfully"
else if ["$opcode" = "2"]; then
emacs $file_name
echo "$file_name saved successfully!"
else
	echo "file saved!"

fi

chmod 777 $file_name


