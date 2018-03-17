#!/bin/bash
# You should supply the number of minutes to count down from as an argument.
SECONDS=$(($1 * 60))
for i in $(seq 1 $SECONDS | tac); do
	echo $i
	sleep 1
done
echo "Done!" | leafpad
