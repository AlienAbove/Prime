#!/bin/bash
#Prime number lister
#Version 1.1
#Setting the (Help) Function
Help () {
echo 'The difficulty can be set between 1 and 5'
	echo 'Difficulty 1 will list all prime numbers between the specified starting point to 100'
	echo 'above it. (i.e. 1 to 100)'
	echo 'Difficulty 2 will increase the range by 150. (i.e. 1 to 250)'
	echo 'Difficulty 3 will increase the range by 250 (i.e. 1 to 500)'
	echo 'Difficulty 4 will increase the range by 500 (i.e. 1 to 1000)'
	echo 'Difficulty 5 will increase the range by 4000 (i.e. 1 to 5000)'
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
	exit 0
}
#Setting the (Prime) Function
Prime () {
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
}
#Setting the Varibles
#Setting starting point
echo 'Please enter starting number: (If help is needed, Enter Help)'
read st
if [ $st = "Help" ]
	then
		Help
fi
#Setting Difficulty
echo 'Please enter difficulty (1-5): (If Help is needed, Enter Help)'
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
#Allows (Help) to be a command
if [ $st = "Help" ]
	then
		Help
fi
if [ $diff = "Help" ]
	then
		Help
fi
Prime

