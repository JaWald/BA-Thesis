import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

architecture = 'Bevy'
file = 'csv/bevy.csv'

df = pd.read_csv(file)

df['time_us'] = df['time_ns'] / df['iterations'] / 1000

df['object_size'] = df['payload'] + 24
start = 0
stop = 25000
df = df[df['object_size'].between(start, stop)]

pivot = df.pivot_table(
    index='payload',
    columns='chunk',
    values='time_us',
    aggfunc='mean'
)

sns.set_theme(style="white")
fig, ax = plt.subplots(figsize=(14, 10), constrained_layout=True)

sns.heatmap(
    pivot,
    ax=ax,
    cmap="magma",
    cbar_kws={'label': 'Average Time per Iteration [µs]'},
    square=False,
    linewidths=0,
    linecolor='none',
    rasterized=False,
)

ax.invert_yaxis()

xstep = max(1, len(pivot.columns) // 10)
ystep = max(1, len(pivot.index) // 12)
ax.set_xticks(np.arange(len(pivot.columns))[::xstep] + 0.5)
ax.set_xticklabels(pivot.columns[::xstep], rotation=0)
ax.set_yticks(np.arange(len(pivot.index))[::ystep] + 0.5)
ax.set_yticklabels(pivot.index[::ystep], rotation=0)

ax.set_title(f'Scenario 3: Allocation - Chunk / Payload Scaling / Drop ({architecture})', fontsize=15)
ax.set_xlabel('Chunk Size [Objects]', fontsize=12)
ax.set_ylabel('Payload Size [Bytes]', fontsize=12)

plt.savefig(f'svg/S3_Heatmap_{architecture}_____.svg')
plt.show()