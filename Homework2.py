# Q6 Part (i)

import pandas as pd
import matplotlib.pyplot as plt

csv_file = "HW2_BTC.csv"
df = pd.read_csv(csv_file)

plt.figure(1)
plt.plot(df["Week"], df["BTC price"], label='Part(i)')
plt.title("BTC-USD,Jan 2018-Jan 2023")
plt.xlabel("work week")
plt.ylabel("closing price (USD)")

# Q6 Part (ii)

# Parameters of function: dataframe containing original data, number of samples
def moving_average(df, k):
    if k == 1:
        return df
    cols = ["Week", "BTC price"]
    new_df = pd.DataFrame(columns=cols)
    new_value = 0
    for i in range(k//2, df.shape[0] - k//2):
        for j in range(i-k//2, (i+k//2) + 1):
            new_value += df.iloc[j, 1]
        new_value /= k
        new_row = {"Week": i, "BTC price": new_value}
        new_df.loc[len(new_df)] = new_row
        new_value = 0
    return new_df


mavg7 = moving_average(df, 7)
mavg15 = moving_average(df, 15)

plt.plot(mavg7["Week"], mavg7["BTC price"], label='k=7 - part(ii)')
plt.plot(mavg15["Week"], mavg15["BTC price"], label='k=15 - part(ii)')

plt.legend()
plt.show()