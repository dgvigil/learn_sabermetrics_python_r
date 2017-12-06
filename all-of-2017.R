library(dplyr)

events <- read.csv("2017-events.csv")
games <- read.csv("2017-games.csv")
data <- inner_join(events,games,by=c("GAME_ID"))
