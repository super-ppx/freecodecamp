#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "truncate teams, games")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if [[ $YEAR != year ]]
  then
    #查看是否已存在team winner
    TEAM_ID_WINNER=$($PSQL "select team_id from teams where name='$WINNER'")
    if [[ -z $TEAM_ID_WINNER ]]
    then
      INSERT_RESULT_WINNER_TEAM=$($PSQL "insert into teams(name) values('$WINNER')")
      TEAM_ID_WINNER=$($PSQL "select team_id from teams where name='$WINNER'")
    fi
    #查看是否已存在team opponent
    TEAM_ID_OPPONENT=$($PSQL "select team_id from teams where name='$OPPONENT'")
    if [[ -z $TEAM_ID_OPPONENT ]]
    then
      INSERT_RESULT_OPPONENT_TEAM=$($PSQL "insert into teams(name) values('$OPPONENT')")
      TEAM_ID_OPPONENT=$($PSQL "select team_id from teams where name='$OPPONENT'")
    fi
    #新增比赛数据
    INSERT_RESULT_GAME=$($PSQL "insert into games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) values ($YEAR, '$ROUND', $TEAM_ID_WINNER, $TEAM_ID_OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS)")
  fi
done