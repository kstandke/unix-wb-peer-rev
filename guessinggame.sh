guess=-1

toguess=$( ls | wc -l ) # calculates how many files are in the folder
# echo $toguess # this line is for debugging only!

while [[ $guess -ne $toguess ]]
do

	echo "Enter a guessing number:"
	read guessInput

	let guess=$guessInput

	# echo "in loop" only for debugging
	if [[ $guess -lt $toguess ]]
	then
		echo "Your guess: $guess     is too small"
		echo ""
	elif [[ $guess -gt $toguess ]]
	then
		echo "Your guess: $guess     is too big"
		echo ""
	else
		echo "BINGOOOOOO!"
	fi
done
echo "You won!"
