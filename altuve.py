import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

all_altuve = pd.read_csv("Altuve-2016-hitting.csv")

all_altuve.head()

all_altuve.plot.scatter(x='x',y='y').invert_yaxis;
plt.show()

