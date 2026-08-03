import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D

file_aos = 'csv/anomaly/laptop_i5/aos.csv'
df = pd.read_csv(file_aos)
df['time_us'] = df['time_ns'] / df['iterations'] / 1000

START_PAYLOAD = 995
STEP_SIZE = 1024

df['Peak_Multiplier'] = ((df['payload'] - START_PAYLOAD) // STEP_SIZE) + 1
df['Offset'] = (df['payload'] - START_PAYLOAD) % STEP_SIZE

# df_filtered = df[df['Peak_Multiplier'] % 4 == 0].copy()
# df_filtered = df[df['Peak_Multiplier'] % 4 == 2].copy()
# df_filtered = df[df['Peak_Multiplier'] % 2 != 0].copy()

magma_colors = sns.color_palette("magma", 3)
color_4k = magma_colors[0]
color_2k = magma_colors[1]
color_1k = magma_colors[2]

max_peak = int(df['Peak_Multiplier'].max())

g_4k = [n for n in range(1, max_peak + 1) if n % 4 == 0]
g_2k = [n for n in range(1, max_peak + 1) if n % 4 == 2]
g_1k = [n for n in range(1, max_peak + 1) if n % 2 != 0]

pal_4k = sns.light_palette(color_4k, n_colors=len(g_4k) + 2)[2:]
pal_2k = sns.light_palette(color_2k, n_colors=len(g_2k) + 2)[2:]
pal_1k = sns.light_palette(color_1k, n_colors=len(g_1k) + 2)[2:]

custom_palette = {}
for i, n in enumerate(g_4k):
    custom_palette[n] = pal_4k[i]
for i, n in enumerate(g_2k):
    custom_palette[n] = pal_2k[i]
for i, n in enumerate(g_1k):
    custom_palette[n] = pal_1k[i]

sns.set_theme(style="whitegrid")
plt.figure(figsize=(11, 7))

ax = sns.lineplot(
    data=df,
    x='Offset',
    y='time_us',
    hue='Peak_Multiplier',
    palette=custom_palette,
    marker='o',
    linewidth=2
)

plt.title('AoS: Cache Anomalies', fontsize=15)
plt.xlabel('Offset in Bytes (0 = 995, 2019, ...)', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)

plt.xticks(range(8))

ax.get_legend().remove()

custom_lines = [
    Line2D([0], [0], color=color_4k, lw=2, marker='o'),
    Line2D([0], [0], color=color_2k, lw=2, marker='o'),
    Line2D([0], [0], color=color_1k, lw=2, marker='o')
]

ax.legend(
    custom_lines,
    ['4, 8, 12, 16, 20 KiB', '2, 6, 10, 14, 18 KiB', 'Odd KiB'],
    title='Payload Size of Peaks',
    loc='upper left'
)

plt.savefig('svg/S2_Peaks_Anomaly_.svg', bbox_inches='tight')
plt.show()