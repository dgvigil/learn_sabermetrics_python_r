import pandas as pd
import matplotlib.pyplot as plt

all_altuve = pd.read_csv("Altuve-2016-hitting.csv")

#all_altuve.head()

hit_types = all_altuve.groupby('des')

fig, ax = plt.subplots()
ax.margins(0.05)
for name, group in hit_types:
    ax.plot(group.x, group.y, marker='o', linestyle='', ms=3, label=name)
ax.legend()

plt.show()

y_max = max(all_altuve['y']) + 25
plt.ylim(y_max, -5)

plt.show()
