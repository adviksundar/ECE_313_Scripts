# Part (i)

import pandas as pd
import matplotlib.pyplot as plt

csv_file = "HW2_BTC.csv"
df = pd.read_csv(csv_file)

plt.plot(df["Week"], df["BTC price"])
plt.title("BTC-USD,Jan 2018-Jan 2023")
plt.xlabel("work week")
plt.ylabel("closing price (USD)")
plt.show()