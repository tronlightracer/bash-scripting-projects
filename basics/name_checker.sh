# defining variables
NAME="Trevor"
NAME2="trevor"
NICKNAME="trev"
echo "What is your name?"
# reads user input and stores it in variable the_name
read the_name
# checks if user input variable is any of the variables defined above
if [[ $the_name = $NAME || $the_name = $NAME2 || $the_name = $NICKNAME ]]
then
    echo "You are the correct user"
else
    echo "You are not the correct user"
# fi closes the if statement
fi
