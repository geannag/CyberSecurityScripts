# grep a time ($1) in a specified dealer schedule file ($2)
# The time should follow the following format 00:00:00 AM/PM
# The game is the third argument ($3), which can be a number from 1-3.
# If the number is not outside of the range, sends an error message.
schedule_file="${2}_Dealer_schedule";
grep "$1" "$schedule_file" > temp_dealer_results_game;

if [ "$3" == "1" ];
then
	awk -F '\t' '{print $2}' temp_dealer_results_game;
elif [ "$4" == "2" ];
then
	awk -F '\t' '{print $3}' temp_dealer_results_game;
elif [ "$5" == "3" ];
then
	awk -F '\t' '{print $4}' temp_dealer_results_game;
else
	echo "This is not a game played at Lucky Duck Casino."
fi

# resetting the temp file
: > temp_dealer_results_game;
