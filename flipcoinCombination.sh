#!/bin/bash
a=$(( RANDOM%2 ));
if [ $a == 1 ];
then
         echo "heads"
else
        echo "tails"
fi
