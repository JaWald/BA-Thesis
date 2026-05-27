import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

files_dl = {
    'Bevy': 'desktop_linux/bevy.csv',
    'SoA': 'desktop_linux/soa.csv',
    'AoS': 'desktop_linux/aos.csv',
    'PC': 'desktop_linux/pc.csv'
}

files_dw = {
    'Bevy': 'desktop_windows/bevy.csv',
    'SoA': 'desktop_windows/soa.csv',
    'AoS': 'desktop_windows/aos.csv',
    'PC': 'desktop_windows/pc.csv'
}

files_lw = {
    'Bevy': 'laptop_windows/bevy.csv',
    'SoA': 'laptop_windows/soa.csv',
    'AoS': 'laptop_windows/aos.csv',
    'PC': 'laptop_windows/pc.csv'
}

files_lm = {
    'Bevy': 'laptop_m5/bevy.csv',
    'SoA': 'laptop_m5/soa.csv',
    'AoS': 'laptop_m5/aos.csv',
    'PC': 'laptop_m5/pc.csv'
}

dataframes = []
for label, file in files_lm.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)
df['time_us'] = df['time_ns'] / df['iterations'] / 1000
df['payload_kib'] = df['payload'] / 1024

sns.set_theme(style="whitegrid")
plt.figure(figsize=(12, 7))

ax = sns.lineplot(
    data=df,
    x='payload_kib',
    y='time_us',
    hue='architecture',
    style='architecture',
    markers=True,
    dashes=False,
    palette="magma"
)

plt.title('Scenario 2: Impact of Payload Size', fontsize=15)
plt.xticks(np.arange(0, df['payload_kib'].max() + 1, 1))
plt.xlabel('Payload Size [KiB]', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)
plt.legend(title='Architecture')

plt.savefig('../../svg/S2_Line_Anomaly.svg', bbox_inches='tight')
plt.show()