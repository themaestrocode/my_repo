#!/bin/bash
echo 'Enter a directory delete: '
read directory
rm -r $directory
echo "'$directory' successfully removed"
