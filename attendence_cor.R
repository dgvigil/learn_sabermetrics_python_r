library(dplyr)

games <- read.csv("data/2017-games.csv")%>%
  mutate(year=substr(GAME_DT,1,4)) %>%
  mutate(month=substr(GAME_DT,5,6)) %>%
  mutate(day=substr(GAME_DT,7,8)) %>%
  mutate(full_date=paste(year,month,day,sep='-')) 
games$year <- NULL
games$month <- NULL
games$day <- NULL
games$GAME_ID <- NULL
games$GAME_DT <- NULL
teams <- unique(games['HOME_TEAM_ID'])

games$winner <- ifelse(games$AWAY_SCORE_CT > games$HOME_SCORE_CT, as.character(games$AWAY_TEAM_ID), as.character(games$HOME_TEAM_ID))
games$loser  <- ifelse(games$AWAY_SCORE_CT < games$HOME_SCORE_CT, as.character(games$AWAY_TEAM_ID), as.character(games$HOME_TEAM_ID))
games <- games[order(as.Date(games$full_date)),,drop=FALSE]
