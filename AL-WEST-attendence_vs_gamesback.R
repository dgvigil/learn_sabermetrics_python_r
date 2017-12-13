#AL West Games Back to Attendence comparison
library(ggplot2)
ALWEST <- subset(games, select = c("HOME_TEAM_ID", "PARK_ID", "ATTEND_PARK_CT", "full_date","HOU_l", "HOU_w", "ANA_l",  "ANA_w", "OAK_l",  "OAK_w", "SEA_l",  "SEA_w", "TEX_l", "TEX_w"))

ggplot(data=ALWEST, aes(full_date))+
  geom_line(aes(y=(HOU_w / (HOU_l + HOU_w)), color="orange"))+
  geom_line(aes(y=(ANA_w / (ANA_l + ANA_w)), color="red"))+
  geom_line(aes(y=(OAK_w / (OAK_l + OAK_w)), color="green"))+
  geom_line(aes(y=(SEA_w / (OAK_l + OAK_w)), color="dark blue"))+
  geom_line(aes(y=(TEX_w / (TEX_l + TEX_w)), color="yellow"))