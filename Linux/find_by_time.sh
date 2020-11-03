# looks for every instance of the time of a major loss for the specified day
# 	in each day's schedule
while IFS= read -r line;
do
	grep "$line" "$2" >> temp_schedule_dealers;
done < $1

# because the roulette dealer is the 3rd column, we grab those dealers at
# 	the corresponding times
awk -F '\t' '{print $3}' temp_schedule_dealers | wc -l;

# clear the temp_schedule_delears to restart search
: > temp_schedule_dealers;
