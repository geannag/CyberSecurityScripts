commas=()
while IFS=$'\n' read -r line;
do
	if [[ $line =~ [[:space:]]","[[:space:]] || 
		$line =~ ","[[:space:]] ||
		$line =~ [[:space:]]"," ]]
	then
		commas+=( "$line" )
	fi
done < <( grep -E -o ".{0,1},.{0,1}" $1 )


for i in ${commas[*]}
do
	echo "$i";
	sed "s/$i/,/" $1 > temp_players;
	#grep -E "$i" $1;
done
