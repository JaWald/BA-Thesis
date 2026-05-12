import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

files = {
    'Desktop Linux': 'desktop_linux/aos.csv',
    'Desktop Windows': 'desktop_windows/aos.csv',
    'Laptop Windows': 'laptop_windows/aos.csv'
}

dataframes = []

for label, file in files.items():
    df = pd.read_csv(file)
    df['system'] = label
    df['time_us'] = df['time_ns'] / df['iterations'] / 1000

    df['Peak_ID'] = (df['payload'] - 995) // 1024
    df['Peak_Multiplier'] = df['Peak_ID'] + 1
    df['Offset'] = (df['payload'] - 995) % 1024

    is_peak_plateau = (df['Offset'] >= 2) & (df['Offset'] <= 5) & (df['payload'] < 21000)
    dataframes.append(df[is_peak_plateau])

df_peaks = pd.concat(dataframes, ignore_index=True)
# df_filtered = df_peaks[df_peaks['Peak_Multiplier'] % 4 == 0].copy()
# df_filtered = df_peaks[df_peaks['Peak_Multiplier'] % 4 == 2].copy()
# df_filtered = df_peaks[df_peaks['Peak_Multiplier'] % 2 != 0].copy()

sns.set_theme(style="whitegrid")
plt.figure(figsize=(14, 7))

ax = sns.scatterplot(
    data=df_peaks,
    x='Peak_ID',
    y='time_us',
    hue='system',
    palette="magma",

    edgecolor=None
)

plt.xticks(range(len(df_peaks['Peak_ID'].unique())),
           [f"{int(i + 1)} KiB" for i in sorted(df_peaks['Peak_ID'].unique())])

plt.title('S2: AoS Plateau Values', fontsize=15)
plt.xlabel('Payload Size [MiB]', fontsize=12)
plt.ylabel('Time per Iteration [µs]', fontsize=12)
plt.legend(title='System', loc='upper left')

plt.savefig('../../svg/S2_AoS.svg', bbox_inches='tight')
plt.show()