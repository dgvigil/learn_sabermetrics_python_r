import pandas as pd
import matplotlib.pyplot as plt

# Get all of the data into the all_altuve DataFrame
all_altuve = pd.read_csv("Altuve-2016-hitting.csv")

# Let's get "Balls In Play" and filter out everything that is a out or error
bip = all_altuve[ all_altuve['type'] != 'O']
bip = bip[ bip['type'] != 'E']

bip_types = bip.groupby('des')
# Start the plots
bip.plot.scatter(x='x', y='y')

fig, ax = plt.subplots()
ax.margins(0.05) # Optional, just adds 5% padding to the autoscaling
for name, group in bip_types:
    #ax.plot(group.x, group.y, marker='o', linestyle='', ms=12, label=name)
    ax.plot(group.x, group.y, linestyle='', label=name)
ax.legend()
plt.show()


# Plot
plt.rcParams.update(pd.tools.plotting.mpl_stylesheet)
colors = pd.tools.plotting._get_standard_colors(len(bip_types), color_type='random')

fig, ax = plt.subplots()
ax.set_color_cycle(colors)
ax.margins(0.05)
for name, group in bip_types:
    ax.plot(group.x, group.y, marker='o', linestyle='', ms=12, label=name)
ax.legend(numpoints=1, loc='upper left')

plt.show()
