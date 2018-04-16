""" This tracks the amount of games back for the AL West in 2017 """
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

ALL_MLB = pd.read_csv("data/2017-games.csv")

# Fixing the date
for count in range(len(ALL_MLB['GAME_DT'])):
    bad_date = str(ALL_MLB['GAME_DT'][count])
    year = bad_date[0:4]
    month = bad_date[4:6]
    day = bad_date[6:8]
    new_date = year + "-" + month + "-" + day
    ALL_MLB.at[count, 'GAME_DT'] = pd.to_datetime(new_date)

ALL_MLB = ALL_MLB.sort_values(by='GAME_DT')
ALL_MLB = ALL_MLB.drop('GAME_ID', axis=1)
# Create dataframe for each team.
TEAMS = ALL_MLB.HOME_TEAM_ID.unique()

# Get all games that involve American League West Teams.
HOME_TEAM = ALL_MLB[ALL_MLB['HOME_TEAM_ID'].str.contains(
    "HOU|ANA|SEA|TEX|OAK")].drop_duplicates()
AWAY_TEAM = ALL_MLB[ALL_MLB['AWAY_TEAM_ID'].str.contains(
    "HOU|ANA|SEA|TEX|OAK")].drop_duplicates()
ALW = HOME_TEAM.append(AWAY_TEAM).drop_duplicates().sort_values(by='GAME_DT')
DATES = ALW['GAME_DT']

# Let's get wins for each team
# First add a column for wins and losses for each team
WINNING_TEAM_ID = np.where(ALW['AWAY_SCORE_CT'] > ALW['HOME_SCORE_CT'],
                           ALW['AWAY_TEAM_ID'], ALW['HOME_TEAM_ID'])
LOSING_TEAM_ID = np.where(ALW['AWAY_SCORE_CT'] < ALW['HOME_SCORE_CT'],
                          ALW['AWAY_TEAM_ID'], ALW['HOME_TEAM_ID'])
ALW = ALW.assign(WINNING_TEAM_ID=WINNING_TEAM_ID)
ALW = ALW.assign(LOSING_TEAM_ID=LOSING_TEAM_ID)

# HOU CumSum
HOU_WIN = ALW.apply(lambda x: "HOU" in x['WINNING_TEAM_ID'], axis=1)
HOU_LS = ALW.apply(lambda x: "HOU" in x['LOSING_TEAM_ID'], axis=1)
HOU_WINS = HOU_WIN.cumsum()
HOU_LOSES = HOU_LS.cumsum()

# ANA CumSum
ANA_WIN = ALW.apply(lambda x: "ANA" in x['WINNING_TEAM_ID'], axis=1)
ANA_LS = ALW.apply(lambda x: "ANA" in x['LOSING_TEAM_ID'], axis=1)
ANA_WINS = ANA_WIN.cumsum()
ANA_LOSES = ANA_LS.cumsum()

# SEA CumSum
SEA_WIN = ALW.apply(lambda x: "SEA" in x['WINNING_TEAM_ID'], axis=1)
SEA_LS = ALW.apply(lambda x: "SEA" in x['LOSING_TEAM_ID'], axis=1)
SEA_WINS = SEA_WIN.cumsum()
SEA_LOSES = SEA_LS.cumsum()

# TEX CumSum
TEX_WIN = ALW.apply(lambda x: "TEX" in x['WINNING_TEAM_ID'], axis=1)
TEX_LS = ALW.apply(lambda x: "TEX" in x['LOSING_TEAM_ID'], axis=1)
TEX_WINS = TEX_WIN.cumsum()
TEX_LOSES = TEX_LS.cumsum()

# OAK CumSum
OAK_WIN = ALW.apply(lambda x: "OAK" in x['WINNING_TEAM_ID'], axis=1)
OAK_LS = ALW.apply(lambda x: "OAK" in x['LOSING_TEAM_ID'], axis=1)
OAK_WINS = OAK_WIN.cumsum()
OAK_LOSES = OAK_LS.cumsum()

# Gather all we've just calculated
WINS_ONLY = pd .concat([HOU_WINS, ANA_WINS, SEA_WINS, TEX_WINS, OAK_WINS],
                       axis=1, join='inner')
WINS_ONLY.columns = ["HOU_WINS", "ANA_WINS", "SEA_WINS",
                     "TEX_WINS", "OAK_WINS"]

HOU_GB = []
ANA_GB = []
SEA_GB = []
TEX_GB = []
OAK_GB = []

# Games Back
for index, row in WINS_ONLY.iterrows():
    most_wins = row.max()
    # HOU
    if row['HOU_WINS'] < most_wins:
        if not HOU_GB:
            HOU_GB.append(0)
        else:
            HOU_GB.append(most_wins - row['HOU_WINS'])
    else:
        HOU_GB.append(0)
    if row['ANA_WINS'] < most_wins:
        if not ANA_GB:
            ANA_GB.append(0)
        else:
            ANA_GB.append(most_wins - row['ANA_WINS'])
    else:
        ANA_GB.append(0)
    if row['SEA_WINS'] < most_wins:
        if not SEA_GB:
            SEA_GB.append(0)
        else:
            SEA_GB.append(most_wins - row['SEA_WINS'])
    else:
        SEA_GB.append(0)
    if row['TEX_WINS'] < most_wins:
        if not TEX_GB:
            TEX_GB.append(0)
        else:
            TEX_GB.append(most_wins - row['TEX_WINS'])
    else:
        TEX_GB.append(0)
    if row['OAK_WINS'] < most_wins:
        if not OAK_GB:
            OAK_GB.append(0)
        else:
            OAK_GB.append(most_wins - row['OAK_WINS'])
    else:
        OAK_GB.append(0)

GAMES_BACK = pd.DataFrame(np.column_stack([HOU_GB, ANA_GB, SEA_GB, TEX_GB,
                                           OAK_GB]),
                          columns=['HOU_GB', 'ANA_GB', 'SEA_GB', 'TEX_GB',
                                   'OAK_GB'])
FRAMES = [DATES, GAMES_BACK]
ALW_GB = pd.concat(FRAMES, axis=1)
ALW_GB.plot()
plt.legend(loc='best')
plt.show()
