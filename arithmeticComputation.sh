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
						operation1=$(($a+$b*$c))
						operation2=$(($a*$b+$c))
						operation3=$(($c+($a/$b)))
						operation4=$((($a%$b)+$c))
						declare -A arithmeticResults
						echo "a=$a, b=$b, c=$c"
						arithmeticResults[a+b*c]="$operation1"
						arithmeticResults[a*b+c]="$operation2"
						arithmeticResults[c+a/b]="$operation3"
						arithmeticResults[a%b+c]="$operation4"
						echo ${arithmeticResults[@]}

						for i in ${arithmeticResults[@]}
                  do
                     array[((count++))]=$i
                  done 
						echo ${array[*]}| tr " " "\n" | sort -n  
				else
						echo "Sorry integers only.."
				fi
		else
				echo "Sorry integers only.."
		fi
else
       echo "Sorry integers only.."
fi

