# counts the players after isolating all the players in the players file ($1): "players" and ($2): "player_names"
while IFS= read -r line;
do
	echo "$line" >> player_playing_counts;
	grep "$line" "$2" | wc -l >> player_playing_counts;
done < $1
