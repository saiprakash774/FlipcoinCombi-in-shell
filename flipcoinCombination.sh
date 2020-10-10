#!/bin/bash
read -p "Enter number of flip required " n
for (( i=0; i<n; i++ ))
do
	s=$(( RANDOM%2 ));
	if [ $s == 1 ];
	then
         	heads=$(($heads+1))
	else
        	tails=$(($tails+1))
	fi
	d=$(( RANDOM%4 ));
	case $d in
		0) hh=$(($hh+1))
			;;
		1) ht=$(($ht+1))
			;;
		2) th=$(($th+1))
			;;
		3) tt=$(($tt+1))
			;;
		*) echo "something went  wrong"
			;;
	esac
done

echo "Number of heads " $heads
echo "Number of tails " $tails
echo "Number of hh combination " $hh
echo "Number of ht combination " $ht
echo "Number of th combination " $th
echo "Number of tt combination " $tt
