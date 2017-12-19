library(dplyr)

events <- read.csv("2017-events.csv")
games <- read.csv("2017-games.csv")
data <- inner_join(events,games,by=c("GAME_ID")) %>%
  mutate(year=substr(GAME_DT,1,4)) %>%
  mutate(month=substr(GAME_DT,5,6)) %>%
  mutate(day=substr(GAME_DT,7,8)) %>%
  mutate(full_date=paste(year,month,day,sep='-'))
data$year <- NULL
data$day <- NULL
data$month <- NULL
