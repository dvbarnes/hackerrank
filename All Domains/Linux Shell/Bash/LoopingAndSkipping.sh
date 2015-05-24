for var in {1..99}
do
	[ $(($var%2)) -eq 1 ] && echo $var;
done