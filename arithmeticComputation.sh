#!/bin/bash -x

read -p "Enter first number: " a
if [ -z "${a//[0-9]}" ] && [ -n "$a" ]
then
		read -p "Enter second number: " b
		if [ -z "${b//[0-9]}" ] && [ -n "$b" ]
		then
				read -p "Enter third number: " c
				if [ -z "${c//[0-9]}" ] && [ -n "$c" ]
				then
						
				else
						echo "Sorry integers only.."
				fi
		else
				echo "Sorry integers only.."
		fi
else
       echo "Sorry integers only.."
fi

