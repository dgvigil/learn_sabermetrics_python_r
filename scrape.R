# Let's get some data
library("pitchRx")
library('RMySQL')
con <- dbConnect(MySQL(),
                 user="mlb", password="mlb",
                 dbname="mlb", host="localhost")

start_time <- Sys.time()
# Regular Season 2015 Players
mlb2015 <- scrape(start="2015-04-01", end="2015-11-02", suffix = "players.xml", connect=con)

# Regular Season 2015 Hitting
mlb2015 <- scrape(start="2015-04-01", end="2015-11-02", suffix = "inning/inning_hit.xml", connect=con)

# Regular Season 2015 All Plays
mlb2015 <- scrape(start="2015-04-01", end="2015-11-02", suffix = "inning/inning_all.xml", connect=con)

# Regular Season 2016 Players
mlb2016 <- scrape(start="2016-04-01", end="2016-11-02", suffix = "players.xml", connect=con)

# Regular Season 2016 Hitting
mlb2016 <- scrape(start="2016-04-01", end="2016-11-02", suffix = "inning/inning_hit.xml", connect=con)

# Regular Season 2016 All Plays
mlb2016 <- scrape(start="2016-04-01", end="2016-11-02", suffix = "inning/inning_all.xml", connect=con)

# Regular Season 2017 Players
mlb2017 <- scrape(start="2017-04-02", end="2017-11-02", suffix = "players.xml", connect=con)

# Regular Season 2017 All Plays
mlb2017 <- scrape(start="2017-04-02", end="2017-11-02", suffix = "inning/inning_all.xml", connect=con)

# Regular Season 2016 Hitting
mlb2017 <- scrape(start="2017-04-02", end="2017-11-02", suffix = "inning/inning_hit.xml", connect=con)
endtime <- Sys.time()

on.exit(dbDisconnect(con))

starttime
endtime
