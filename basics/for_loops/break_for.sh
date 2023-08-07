for i in 1 2 3 4 5
do
    echo "$i"
    if [[ "$i" == 3 ]]
    then
      # continues the iteration
      continue
    elif [[ $i == 4 ]]
    then
      # breaks the iteration
      break
    # ends the if and elif conditions
    fi
done