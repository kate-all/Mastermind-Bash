#!/bin/bash
#Kate Allsebrook
#A command line version of the classic game Mastermind

#Set code
NUM1=10
NUM2=10
NUM3=10
NUM4=10
NUM5=10

until ((NUM1 <= 8))
do
	NUM1=$(( $RANDOM % 10 + 1 ))
done


until ((NUM2 <= 8))
do	
	NUM2=$(( $RANDOM % 10 + 1 ))
done

until ((NUM3 <= 8))
do
	NUM3=$(( $RANDOM % 10 + 1 ))
done

until ((NUM4 <= 8))
do
	NUM4=$(( $RANDOM % 10 + 1 ))
done

until ((NUM5 <= 8))
do	
	NUM5=$(( $RANDOM % 10 + 1 ))
done

#echo "$NUM1 $NUM2 $NUM3 $NUM4 $NUM5"

#Set backup constants (CODE series)
CODE1=$NUM1
CODE2=$NUM2
CODE3=$NUM3
CODE4=$NUM4
CODE5=$NUM5

#Intro
echo "______________________________________________________________________________________________________________________________________________"
echo
echo "Welcome to"
figlet "MASTERMIND"
echo "[Enter q to QUIT]"
echo 
echo "CODE:"
echo "The code is randomly comprised of 5 numbers between 1 and 8 (inclusive) and numbers can repeat up to 5 times."
echo 
echo "SYMBOLS:"
echo "\$ means that you have a correct number in the correct place"
echo "# means that you have a correct number in an incorrect place"
echo
echo "ATTEMPTS:"
echo "You have 8 attempts"
echo "To make an attempt, simply type 5 numbers, space seperated and hit ENTER to make your first guess. (ex. 5 1 3 4 4)"

echo "Good Luck!"
echo
echo "______________________________________________________________________________________________________________________________________________"

#Each attempt
for ATTEMPTNUM in {1..8}
do
	#Read attempt
	read USERNUM1 USERNUM2 USERNUM3 USERNUM4 USERNUM5

	#Quit
	if [ $USERNUM1 = q ]
	then
		break
	fi

	#Check $
	if [ $USERNUM1 -eq $NUM1 ]
	then
		DOLLARSIGN+="$"

		#Delete USERNUM1
		USERNUM1=0

		NUM1=-1
	fi

	if [ $USERNUM2 -eq $NUM2 ] 
	then
		DOLLARSIGN+="$"

		#Delete USERNUM2
		USERNUM2=0

		NUM2=-1
	fi
		
	if [ $USERNUM3 -eq $NUM3 ] 
	then
		DOLLARSIGN+="$"
			
		#Delete USERNUM3
		USERNUM3=0

		NUM3=-1
	fi

	if [ $USERNUM4 -eq $NUM4 ]
	then
		DOLLARSIGN+="$"

		#Delete USERNUM4
		USERNUM4=0

		NUM4=-1
	fi

	if [ $USERNUM5 -eq $NUM5 ] 
	then
		DOLLARSIGN+="$"

		#Delete USERNUM5
		USERNUM5=0

		NUM5=-1
	fi

#	echo "Post $ Check:"
#    	echo "Code: $NUM1 $NUM2 $NUM3 $NUM4 $NUM5"
#	echo "User: $USERNUM1 $USERNUM2 $USERNUM3 $USERNUM4 $USERNUM5"
#	echo

	#Check #
	until [ $USERNUM1 -eq 0 ] && [ $USERNUM2 -eq 0 ] && [ $USERNUM2 -eq 0 ]  && [ $USERNUM4 -eq 0 ] && [ $USERNUM5 -eq 0 ]	
	do
		case $USERNUM1 in
		$NUM1)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM1=0

			#Delete NUM
			NUM1=-1
		;;
		$NUM2)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM1=0

			#Delete NUM
			NUM2=-1
		;;
		$NUM3)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM1=0

			#Delete NUM
			NUM3=-1
		;;
		$NUM4)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM1=0

			#Delete NUM
			NUM4=-1
		;;
		$NUM5)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM1=0

			#Delete NUM
			NUM5=-1
		;;
		*)
			#Delete USERNUM1
			USERNUM1=0
		;;
		esac
		
		case $USERNUM2 in
		$NUM1)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM2=0

			#Delete NUM
			NUM1=-1
		;;
		$NUM2)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM2=0

			#Delete NUM
			NUM2=-1
		;;
		$NUM3)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM2=0

			#Delete NUM
			NUM3=-1
		;;
		$NUM4)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM2=0

			#Delete NUM
			NUM4=-1
		;;
		$NUM5)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM2=0

			#Delete NUM
			NUM5=-1
		;;
		*)
			#Delete USERNUM1
			USERNUM2=0
		;;
		esac

		case $USERNUM3 in
		$NUM1)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM3=0

			#Delete NUM
			NUM1=-1
		;;
		$NUM2)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM3=0

			#Delete NUM
			NUM2=-1
		;;
		$NUM3)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM3=0

			#Delete NUM
			NUM3=-1
		;;
		$NUM4)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM3=0

			#Delete NUM
			NUM4=-1
		;;
		$NUM5)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM3=0

			#Delete NUM1
			NUM5=-1
		;;
		*)
			#Delete USERNUM1
			USERNUM3=0
		;;
		esac

		case $USERNUM4 in
		$NUM1)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM4=0

			#Delete NUM
			NUM1=-1
		;;
		$NUM2)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM4=0

			#Delete NUM
			NUM2=-1
		;;
		$NUM3)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM4=0

			#Delete NUM
			NUM3=-1
		;;
		$NUM4)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM4=0

			#Delete NUM
			NUM4=-1
		;;
		$NUM5)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM4=0

			#Delete NUM1
			NUM5=-1
		;;
		*)
			#Delete USERNUM1
			USERNUM4=0
		;;
		esac

		case $USERNUM5 in
		$NUM1)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM5=0

			#Delete NUM
			NUM1=-1
		;;
		$NUM2)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM5=0

			#Delete NUM
			NUM2=-1
		;;
		$NUM3)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM5=0

			#Delete NUM
			NUM3=-1
		;;
		$NUM4)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM5=0

			#Delete NUM
			NUM4=-1
		;;
		$NUM5)
			NUMSIGN+="#"

			#Delete USERNUM1
			USERNUM5=0

			#Delete NUM1
			NUM5=-1
		;;
		*)
			#Delete USERNUM1
			USERNUM5=0
		;;
		esac
	done

#	echo "Post # Check: "
#	echo "CODE: $NUM1 $NUM2 $NUM3 $NUM4 $NUM5"
#	echo "USER: $USERNUM1 $USERNUM2 $USERNUM3 $USERNUM4 $USERNUM5"
#	echo
				
	#Output results for this attempt
	echo $DOLLARSIGN
	echo $NUMSIGN
	echo "______________________________________________________________________________________________________________________________________________"

	#Reset Code
	NUM1=$CODE1
	NUM2=$CODE2
	NUM3=$CODE3
	NUM4=$CODE4
	NUM5=$CODE5
#	echo "RESET: $NUM1 $NUM2 $NUM3 $NUM4 $NUM5"

	#End of Game
	#Add an arbitray $ to DOLLARSIGN so it isn't null in first elif
	if [ -z $DOLLARSIGN ]
	then
		DOLLARSIGN="$"
	#win
	elif [ $DOLLARSIGN = '$$$$$' ]
	then
		echo "Congrats! You cracked the code in $ATTEMPTNUM attempt(s)!"
	
	#lose
	elif (( $ATTEMPTNUM == 8 ))
	then
		echo "Oh no! You didn't crack the code. The code was: $CODE1 $CODE2 $CODE3 $CODE4 $CODE5"
	fi

	#again?
	if [ $DOLLARSIGN = '$$$$$' ] || (( $ATTEMPTNUM == 8 ))
	then
		echo "Would you like to play again? [y/n]"
		read ANSWER
		if [ $ANSWER = "y" ]
		then
			echo
			./mastermindGame.sh
		else
			echo "Thank you for playing!"
			break
		fi

	fi

	#Clear variables
	DOLLARSIGN=''
	NUMSIGN=''
done
