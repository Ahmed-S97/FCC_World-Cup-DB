#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE teams, games")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_G OPPONENT_G
do
  if [[ $WINNER != "winner" ]]
  then
    TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    if [[ -z $TEAM_ID ]]
    then
      INSERT_TEAM_ID=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_TEAM_ID == "INSERT 0 1" ]]
      then
        echo insert into teams, $WINNER
      fi
      TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    fi
  fi


  if [[ $OPPONENT != "opponent" ]]
  then
    TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    if [[ -z $TEAM_ID2 ]]
    then
      INSERT_TEAM_ID2=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_TEAM_ID2 == "INSERT 0 1" ]]
      then
        echo insert into teams, $OPPONENT
      fi
      TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    fi
  fi

  if [[ $YEAR != "year" ]]
  then
    #TEAM_ID1=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    #TEAM_ID2=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    INSERT_GAMES=$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) VALUES($YEAR,'$ROUND',$TEAM_ID,$TEAM_ID2,$WINNER_G,$OPPONENT_G)")
    if [[ $INSERT_GAMES == "INSERT 0 1" ]]
    then
      echo INSERT GAMES, $YEAR 
    fi
  fi



done
