#!/bin/bash

unit_value_file="unités.txt"

if [ -f "unités.txt" ]; then unit_value=$( cat "unités.txt" )
                     unit_value=$(( unit_value +1 ))
					 echo "$unit_value" > "unités.txt";
else touch unités.txt && echo 1 > unités.txt
fi

  if [[ $unit_value == 10 ]]; then echo 0 > unités.txt
                           if [ -f "dixaines.txt" ]
                           then 
						          tens_value=$( cat "dixaines.txt")
                                  tens_value=$(( tens_value+1))
                                  echo "$tens_value" > dixaines.txt ;
								  
  else touch dixaines.txt && echo 1 > dixaines.txt
  fi
fi  