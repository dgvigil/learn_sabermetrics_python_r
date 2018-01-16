library(ggplot2)
library(dplyr) 
library(pitchRx)

# gather Dallas K's games
game01 <- scrape("2017-04-03", "2017-04-03") 

locations <- select(tbl(game01, "pitch"), 
                    pitch_type, px, pz, des, num, gameday_link, inning)
