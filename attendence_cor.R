library(dplyr)

games <- read.csv("2017-games.csv")
teams <- unique(games['HOME_TEAM_ID'])

winner <- ifelse(games['AWAY_SCORE_CT'] > games['HOME_SCORE_CT'], "away", "home")
winner <- ifelse(games['AWAY_SCORE_CT'] > games['HOME_SCORE_CT'], games['AWAY_TEAM_ID'], games['HOME_TEAM_ID'])



games['winnig_team_id'] <- winner
