#!/bin/bash

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Wizard"
read class

case $class in 
	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)
		type="Wizard"
		hp=30
		attack=5
		;;
esac
echo "You chosen the $type class. Your hp is $hp and your attack damage is $attack."
#First beast battle
beast=$(( $RANDOM % 2 ))
echo "Your first beast approaches. Prepare to battle. Pick a number between 0-1. (0/1)"
read tarnished
if [[ $beast == $tarnished ]]; then
	echo "Beast Vanquished!! Congrats fellow tarnished"
else 
	echo "You Died"
	exit 1 
fi
sleep 2 

margrit=$(( $RANDOM %10))
echo "Your second beast approaches.Prepare to battle. Pick a number between 0-9."
read tarnished 
if [[ $margrit == $tarnished ]]; then
	echo "Beast Vanquished!! Congrats fellow tarnished"
else 
	echo "You Died"
fi

