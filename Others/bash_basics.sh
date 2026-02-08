#Question2 All Parts

NAME='Syed Hashim Mustafa'
echo "My name is $NAME"

if [ $1 ]
then
	echo "first argument: $1"
	if [ $1 -gt 10 ]
	then
		echo "Greater than 10"
	else
		echo "Smaller than 10"
	fi
else
	echo "no first argument"
fi

for i in {1..5}
do
	echo $i
done

case $2 in
	red) echo "Stop" ;;
	green) echo "Go" ;;
	Yello) echo "Wait" ;;
	*) echo "Unknown Color" ;;
esac
