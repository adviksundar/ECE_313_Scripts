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

# Part (ii)

def moving_average(df, k):
    if k == 1:
        return df
    cols = ["Week", "BTC price"]
    new_df = pd.DataFrame(columns=cols)
    new_value = 0
    for i in range(k//2, df.shape[0] - k//2):
        for j in range(i-k//2, (i+k//2) + 1):
            new_value += df.iloc[j, 'BTC price']
        new_row = {'Week': i, 'BTC price': new_value}
        new_df = new_df.append(new_row, ignore_index=True)
        new_value = 0
    return new_df


mavg7 = moving_average(df, 7)
mavg15 = moving_average(df, 15)

plt.plot(mavg7["Week"], mavg7["BTC price"])
plt.title("k = 7")
plt.xlabel("work week")
plt.ylabel("closing price (USD)")
plt.show()

plt.plot(mavg15["Week"], mavg15["BTC price"])
plt.title("k = 15")
plt.xlabel("work week")
plt.ylabel("closing price (USD)")
plt.show()