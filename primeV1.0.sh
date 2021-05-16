#!/bin/bash
#Prime number lister
#Version 1.0
#Setting the Varibles
#Setting starting point
echo 'Please enter starting number:'
read st
#Setting Difficulty
echo 'Please enter difficulty (1-5):'
read diff
#Setting Default Difficulty
end=$(( $st + 500))
#Setting end point
if [ $diff = 1 ]
	then
		end=$(( $st + 100 ))
fi
if [ $diff = 2 ]
	then
		end=$(( $st + 250 ))
fi
if [ $diff = 3 ]
	then
		end=$(( $st + 500 ))
fi
if [ $diff = 4 ]
	then
		end=$(( $st + 1000 ))
fi
if [ $diff = 5 ]
	then
		end=$(( $st + 5000 ))
fi
#While loop to check all numbers between (st) and (end)
while [ $st -le $end ]
	do
		#Setting varibles
		i=2
		f=0
		var=$(( $st / 2 ))
		#While loop to divide (st) by all factors up to half of itself
		while [ $i -le $var ]
			do
				#Setting varibles
				var2=$(( $st % $i ))
				#Dividing (st) by (i)
				if [ $var2 -eq 0 ]
					then
						f=1
				fi
				i=$(( $i + 1 ))
			done
		if [ $f -eq 1 ]
			then
				:
			else
				echo "$st is Prime"
		fi
		st=$(( $st + 1 ))
	done
