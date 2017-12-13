import pandas as pd
import matplotlib.pyplot as plt
from datetime import datetime
import numpy as np

ALL_MLB = pd.read_csv("2017-games.csv")

#Fixing the date
for count in range(len(ALL_MLB['GAME_DT'])):
    bad_date = str(ALL_MLB['GAME_DT'][count])
    year = bad_date[0:4]
    month = bad_date[4:6]
    day = bad_date[6:8]
    new_date = year + "-" + month + "-" + day
    ALL_MLB.at[count, 'GAME_DT'] = pd.to_datetime(new_date)

ALL_MLB = ALL_MLB.sort_values(by='GAME_DT')
ALL_MLB = ALL_MLB.drop('GAME_ID',axis=1)

# Create dataframe for each team.
teams = ALL_MLB.HOME_TEAM_ID.unique()

# Get all games that involve American League West Teams.
ALW = ALL_MLB[ALL_MLB['HOME_TEAM_ID'].str.contains("HOU|ANA|SEA|TEX")]

# Let's get wins for each team
# First add a column for wins and losses for each team

#ALW['WINNING_TEAM_ID'] = np.where(ALW['AWAY_SCORE_CT'] > ALW['HOME_SCORE_CT'], ALW['AWAY_TEAM_ID'], ALW['HOME_TEAM_ID'])
ALW['WINNING_TEAM_ID'] = ALW.apply(lambda x : x['AWAY_TEAM_ID'] if x['AWAY_SCORE_CT'] > x['HOME_SCORE_CT'] else x['HOME_TEAM_ID'], axis=1)
#ALW['LOSING_TEAM_ID'] = np.where(ALW['AWAY_SCORE_CT'] < ALW['HOME_SCORE_CT'], ALW['AWAY_TEAM_ID'], ALW['HOME_TEAM_ID'])
print(ALW.head())
