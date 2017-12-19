#Houston winning percentage 
library(ggplot2)
library(dplyr)

# Build the dataframe from the csv with a good date
games <- read.csv("2017-games.csv")%>%
  mutate(year=substr(GAME_DT,1,4)) %>%
  mutate(month=substr(GAME_DT,5,6)) %>%
  mutate(day=substr(GAME_DT,7,8)) %>%
  mutate(full_date=as.Date(paste(year,month,day,sep='-'))) %>%
  arrange(full_date)
# Drop uneeded columns
games$year <- NULL
games$month <- NULL
games$day <- NULL
games$GAME_ID <- NULL
games$GAME_DT <- NULL
# Get a list of teams, just in case
teams <- unique(games['HOME_TEAM_ID'])
#Determine the winner and loser of each game
games$winner <- ifelse(games$AWAY_SCORE_CT > games$HOME_SCORE_CT, as.character(games$AWAY_TEAM_ID), as.character(games$HOME_TEAM_ID))
games$loser  <- ifelse(games$AWAY_SCORE_CT < games$HOME_SCORE_CT, as.character(games$AWAY_TEAM_ID), as.character(games$HOME_TEAM_ID))
# Find out which games the 'Stros won
bool_win_HOU <- as.numeric(grepl("HOU", games$winner))
# Get the cumulative sum as the season progresses
HOU_w <- cumsum(bool_win_HOU)
# Find out which they lost
bool_loss_HOU <- as.numeric(grepl("HOU", games$loser))
# Get the cumulative sum as the season progresses
HOU_l <- cumsum(bool_loss_HOU)
# Get the info we need from the original dataframe into a new df called HOU
ALL_MLB <- subset(games, select = c("HOME_TEAM_ID", "PARK_ID", "ATTEND_PARK_CT", "full_date"))
# Add the two new numbers to the dataframe
ALL_MLB$HOU_l <- HOU_l
ALL_MLB$HOU_w <- HOU_w
#Let's just get games in HOU
HOU <- filter(ALL_MLB, PARK_ID == "HOU03")

# .500 line
x <- as.Date(c("2017-04-01", "2017-10-01"))
y<-c(.5,.5)
five_hundered_line <- data.frame(date=x,five_hun=y)

# Let's plot
ggplot(data=HOU, aes(x=full_date))+
    geom_line(data=five_hundered_line,aes(x=date,y=five_hun), size=2)+
    geom_line(aes(y=(HOU_w / (HOU_l + HOU_w))))

