# grep a time ($1) in a specified dealer schedule file ($2)
# The time should follow the following format 00:00:00 AM/PM
schedule_file="${2}_Dealer_schedule";
grep "$1" "$schedule_file" > temp_dealer_results;
