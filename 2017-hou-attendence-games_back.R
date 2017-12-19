library(dplyr)

games <- read.csv("2017-games.csv")
games <- mutate(games, year=substr(games$GAME_DT,1,4))
games <- mutate(games, month=substr(games$GAME_DT,5,6))
games <- mutate(games, day=substr(games$GAME_DT,7,8))
games <- mutate(games, full_date=as.Date(paste(year,month,day,sep='-')))
games$year <- NULL
games$month <- NULL
games$day <- NULL
games$GAME_ID <- NULL
games$GAME_DT <- NULL
games <- arrange(games, games$full_date)
temp <- games


teams = c("ANA", "ARI", "ATL", "BAL", "BOS", "CHA", "CHN", "CIN", "CLE", "COL", "DET", "HOU", "KCA", "LAN", "MIA", "MIL", "MIN", "NYA", "NYN", "OAK", "PHI", "PIT", "SDN", "SEA", "SFN", "SLN", "TBA", "TEX", "TOR", "WAS")
for (team in teams) {
  games[,team] <- NA
}

# ANA ARI ATL BAL BOS CHA CHN CIN CLE COL DET HOU KCA LAN MIA MIL MIN NYA NYN OAK PHI PIT SDN SEA SFN SLN TBA TEX TOR WAS
hou <- with(games, grepl("HOU", games$AWAY_TEAM_ID))
