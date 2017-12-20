import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Get all of the data into the all_altuve DataFrame
all_altuve = pd.read_csv("data/Altuve-2016-hitting.csv")

# Let's get "Balls In Play" and filter out everything that is a out or error
bip = all_altuve[ all_altuve['type'] != 'O']
bip = bip[ bip['type'] != 'E']

bip_types = bip.groupby('des')
# Start the plots
#bip.plot.scatter(x='x', y='y')

fig, ax = plt.subplots()
ax.margins(0.05) # Optional, just adds 5% padding to the autoscaling
for name, group in bip_types:
    ax.plot(group.x, group.y, marker='o', linestyle='', ms=3, label=name)
ax.legend()
plt.show()
plt.clf()


