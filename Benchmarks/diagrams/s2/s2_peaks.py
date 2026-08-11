import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
from matplotlib.lines import Line2D

file_aos = 'csv/final/AoS__w-200_i-200_s-5.csv'
df = pd.read_csv(file_aos)
df['time_us'] = df['time_ns'] / df['iteration_count'] / 1000

STRUCT_OFFSET = 24     # velocity(12) + position(12); payload folgt danach
PERIOD = 1024
WIN = 4                # Fensterbreite: Offsets -WIN..+WIN

# Struct-Groesse und signierter Abstand zur naechsten 1024er-Grenze (Spike bei 0)
struct = df['payload'] + STRUCT_OFFSET
df['Offset'] = ((struct + PERIOD // 2) % PERIOD) - PERIOD // 2
df['Peak_Multiplier'] = (struct // PERIOD).astype(int)

# nur das schmale Fenster um jede Spike-Stelle
df = df[df['Offset'].abs() <= WIN].copy()

# Kategorien nach Teilbarkeit der Struct-Groesse durch Zweierpotenzen
magma_colors = sns.color_palette("magma", 3)
color_4k, color_2k, color_1k = magma_colors[0], magma_colors[1], magma_colors[2]

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

# vorab aggregieren -> schnell, kein Bootstrap
agg = df.groupby(['Peak_Multiplier', 'Offset'], as_index=False)['time_us'].mean()

sns.set_theme(style="whitegrid")
plt.figure(figsize=(7, 4.5))

ax = sns.lineplot(
    data=agg,
    x='Offset',
    y='time_us',
    hue='Peak_Multiplier',
    palette=custom_palette,
    marker='o',
    markersize=4,
    linewidth=1.5,
    errorbar=None,
    sort=True,
)

plt.xlabel('Offset from power-of-two struct size [Bytes]', fontsize=11)
plt.ylabel('Average Time per Iteration [µs]', fontsize=11)
plt.xticks(range(-WIN, WIN + 1))

if ax.get_legend() is not None:
    ax.get_legend().remove()

custom_lines = [
    Line2D([0], [0], color=color_4k, lw=1.5, marker='o'),
    Line2D([0], [0], color=color_2k, lw=1.5, marker='o'),
    Line2D([0], [0], color=color_1k, lw=1.5, marker='o'),
]
ax.legend(
    custom_lines,
    ['4, 8, 12, 16, 20 KiB', '2, 6, 10, 14, 18 KiB', 'Odd KiB'],
    title='Struct size at peak',
    loc='upper right',
    fontsize=9,
)

plt.savefig('svg/S2_spikes.pdf', bbox_inches='tight')
plt.show()