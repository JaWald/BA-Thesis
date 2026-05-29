import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

files_dl = {
    'Bevy': 'csv/full/desktop_linux/bevy.csv',
    'SoA': 'csv/full/desktop_linux/soa.csv',
    'AoS': 'csv/full/desktop_linux/aos.csv',
    'PC': 'csv/full/desktop_linux/pc.csv'
}

files_dw = {
    'Bevy': 'csv/full/desktop_windows/bevy.csv',
    'SoA': 'csv/full/desktop_windows/soa.csv',
    'AoS': 'csv/full/desktop_windows/aos.csv',
    'PC': 'csv/full/desktop_windows/pc.csv'
}

files_lw = {
    'Bevy': 'csv/full/laptop_windows/bevy.csv',
    'SoA': 'csv/full/laptop_windows/soa.csv',
    'AoS': 'csv/full/laptop_windows/aos.csv',
    'PC': 'csv/full/laptop_windows/pc.csv'
}

files_lm = {
    'Bevy': 'csv/full/laptop_m5/bevy.csv',
    'SoA': 'csv/full/laptop_m5/soa.csv',
    'AoS': 'csv/full/laptop_m5/aos.csv',
    'PC': 'csv/full/laptop_m5/pc.csv'
}

dataframes = []
for label, file in files_dl.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)
df['time_us'] = df['time_ns'] / df['iterations'] / 1000
df['payload_kib'] = df['payload'] / 1024
df = df[df['payload_kib'] <= 16]

sns.set_theme(style="whitegrid")
plt.figure(figsize=(12, 7))

ax = sns.lineplot(
    data=df,
    x='payload_kib',
    y='time_us',
    hue='architecture',
    style='architecture',
    markers=False,
    dashes=False,
    palette="magma"
)

plt.title('Scenario 2: Impact of Payload Size', fontsize=15)
plt.xticks(np.arange(0, df['payload_kib'].max() + 1, 1))
plt.xlabel('Payload Size [KiB]', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)
plt.legend(title='Architecture')

plt.savefig('svg/S2_Line_Anomaly.svg', bbox_inches='tight')
plt.show()