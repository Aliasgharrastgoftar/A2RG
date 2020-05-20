#!/bin/bash

generate_random () {
	val=$(( RANDOM % $1 ))
	echo "$val"
}

print_and_shift () {
	arr=$1
	
	rand_idx=$(generate_random ${#my_array[@]})
	val=${my_array[$rand_idx]}

	unset my_array[rand_idx]
	my_array=( "${my_array[@]}" )
	
	echo $val
}

echo $(generate_random 10)

my_array=(1 2 3 4 5 6 7 8 9 10)

for i in {0..9}
do
	print_and_shift $my_array
done
