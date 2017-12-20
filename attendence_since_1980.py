""" This tracks the amount of games back for the AL West in 2017 """
import glob
import os
import pandas as pd

PATH = r'./data'
ALL_FILES = glob.glob(os.path.join(PATH, "attendence-stadium-*.csv"))
DF_FROM_EACH_FILE = (pd.read_csv(f) for f in ALL_FILES)
ATTENDENCE = pd.concat(DF_FROM_EACH_FILE, ignore_index=True)
print(ATTENDENCE.head())

# Fixing the date
for count in range(len(ATTENDENCE['GAME_DT'])):
    bad_date = str(ATTENDENCE['GAME_DT'][count])
    year = bad_date[0:4]
    month = bad_date[4:6]
    day = bad_date[6:8]
    new_date = year + "-" + month + "-" + day
    ATTENDENCE.at[count, 'GAME_DT'] = pd.to_datetime(new_date)

ATTENDENCE = ATTENDENCE.sort_values(by='GAME_DT')
ATTENDENCE = ATTENDENCE.reset_index(drop=True)
print(ATTENDENCE.head())
