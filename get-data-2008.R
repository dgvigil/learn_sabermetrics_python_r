require(devtools)
library(dplyr)
library(RMySQL)
if (!require(knitr)) install_github('yihui/knitr')
if (!require(pitchRx)) install_github('cpsievert/pitchRX')
opts_chunk$set(fig.path="figure/", cache.path="cache/", dev='CairoPNG', fig.align='center', fig.width=8, fig.height=7, fig.cap='', warning=FALSE, message=FALSE, tidy=FALSE)

drv <- dbDriver("MySQL");
MLB <- dbConnect(drv, user="htown", password="Thel0ve0fchrist!", port=3306, dbname="mlb", host="34.215.228.5");
scrape(start = "2008-01-01", end = "2008-12-31", connect=MLB)
print("Completed 2008")
