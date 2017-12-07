# Let's get some data
library("pitchRx")
library('RMySQL')
con <- dbConnect(MySQL(),
                 user="mlb", password="mlb",
                 dbname="mlb", host="localhost")

start_time <- Sys.time()

# Regular Season 2016 Players
mlb2016 <- scrape(start="2016-04-01", end="2016-11-02", suffix = "players.xml", connect=con)

# Regular Season 2016 Hitting
mlb2016 <- scrape(start="2016-04-01", end="2016-11-02", suffix = "inning/inning_hit.xml", connect=con)

# Regular Season 2016 All Plays
mlb2016 <- scrape(start="2016-04-01", end="2016-11-02", suffix = "inning/inning_all.xml", connect=con)

endtime <- Sys.time()

on.exit(dbDisconnect(con))

starttime
endtime
