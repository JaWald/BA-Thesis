import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np

warmups = '100'
iterations = '50'
samples = '10'
suffix = f'_w-{warmups}_i-{iterations}_s-{samples}'

files = {
    'Bevy': f'csv/final/Bevy{suffix}.csv',
    'SoA': f'csv/final/SoA_{suffix}.csv',
    'AoS': f'csv/final/AoS_{suffix}.csv',
    'PC': f'csv/final/PC___{suffix}.csv'
}

dataframes = []
for label, file in files.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

start = 16370
stop = 16390

df = pd.concat(dataframes, ignore_index=True)
df = df[df['planet_count'].between(start, stop)]
df['time_us'] = df['time_ns'] / df['iteration_count'] / 1000

sns.set_theme(style="whitegrid")
plt.figure(figsize=(7, 4.5))

ax = sns.lineplot(
    data=df,
    x='planet_count',
    y='time_us',
    hue='architecture',
    style='architecture',
    markers=False,
    dashes=False,
    palette="magma",
    errorbar=None,
    linewidth=1.5
)

plt.xlabel('Planet Count [×1000]', fontsize=11)
ticks = np.arange(start, stop + 1, 2)
plt.xticks(ticks, [f'{int(t/1)}' for t in ticks])

plt.ylabel('Average Time per Iteration [µs]', fontsize=11)

plt.legend(title='Architecture', fontsize=11)
plt.savefig('svg/S1_pc.pdf', bbox_inches='tight')
plt.show()