import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np

warmups = '100'
iterations = '100'
samples = '1'
suffix = f'_w-{warmups}_i-{iterations}_s-{samples}'

files = {
    'Bevy': f'csv/Bevy{suffix}.csv',
    'SoA': f'csv/SoA_{suffix}.csv',
    'AoS': f'csv/AoS_{suffix}.csv',
    'PC': f'csv/PC___{suffix}.csv'
}

dataframes = []
for label, file in files.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

start = 0
stop = 50000

df = pd.concat(dataframes, ignore_index=True)

df['time_us'] = df['time_ns'] / df['iteration_count'] / 1000

sns.set_theme(style="whitegrid")
plt.figure(figsize=(12, 7))

ax = sns.lineplot(
    data=df,
    x='planet_count',
    y='time_us',
    hue='architecture',
    style='architecture',
    markers=False,
    dashes=False,
    palette="magma",
    errorbar=None
)

plt.title('Scenario 1: Compute Bound', fontsize=15)
plt.xlabel('Planet Count', fontsize=12)
plt.xticks(np.arange(start-start, stop-start + 1, 5000))
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)

plt.legend(title='Architecture')
plt.savefig('svg/S1_.svg', bbox_inches='tight')
plt.show()