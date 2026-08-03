import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

files = {
    'Desktop Linux': 'csv/full/desktop_linux/aos.csv',
    'Desktop Windows': 'csv/full/desktop_windows/aos.csv',
    'Laptop Windows': 'csv/full/laptop_windows/aos.csv',
    'Laptop M5' : 'csv/full/laptop_m5/aos.csv',
    #'Laptop i5' : 'csv/full/laptop_i5/aos.csv',
}

dataframes = []

for label, file in files.items():
    df = pd.read_csv(file)
    df['system'] = label
    df['time_us'] = df['time_ns'] / df['iterations'] / 1000

    df['Peak_ID'] = (df['payload'] - 995) // 1024
    df['Peak_Multiplier'] = df['Peak_ID'] + 1
    df['Offset'] = (df['payload'] - 995) % 1024

    is_peak_plateau = (df['Offset'] >= 2) & (df['Offset'] <= 5) & (df['payload'] < 22000)
    dataframes.append(df[is_peak_plateau])

df_peaks = pd.concat(dataframes, ignore_index=True)
# df_filtered = df_peaks[df_peaks['Peak_Multiplier'] % 4 == 0].copy()
# df_filtered = df_peaks[df_peaks['Peak_Multiplier'] % 4 == 2].copy()
# df_filtered = df_peaks[df_peaks['Peak_Multiplier'] % 2 != 0].copy()

sns.set_theme(style="whitegrid")
plt.figure(figsize=(14, 7))

ax = sns.stripplot(
    data=df_peaks,
    x='Peak_ID',
    y='time_us',
    hue='system',
    palette="magma",

    dodge=True,
    jitter=True,
    alpha=0.8,
    size=5
)

plt.axvline(x=0.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=1.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=2.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=3.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=4.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=5.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=6.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=7.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=8.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=9.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=10.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=11.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=12.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=13.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=14.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=15.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=16.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=17.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=18.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=19.5, color='lightgray', linestyle='-', alpha=0.7)
plt.axvline(x=20.5, color='lightgray', linestyle='-', alpha=0.7)

plt.title('S2: AoS Performance by Hardware', fontsize=16)
plt.xlabel('Payload Size [KiB]', fontsize=12)
plt.ylabel('Time per Iteration [µs]', fontsize=12)
plt.legend(title='System', loc='upper left')

plt.savefig('svg/S2_AoS.svg', bbox_inches='tight')
plt.show()