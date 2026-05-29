import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

files_dl = {
    #'Bevy': 'csv/full/desktop_linux/bevy.csv',
    #'SoA': 'csv/full/desktop_linux/soa.csv',
    'AoS': 'csv/full/desktop_linux/aos.csv',
    #'PC': 'csv/full/desktop_linux/pc.csv'
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
    #'Bevy': 'csv/full/laptop_m5/bevy.csv',
    #'SoA': 'csv/full/laptop_m5/soa.csv',
    'AoS': 'csv/full/laptop_m5/aos.csv',
    #'PC': 'csv/full/laptop_m5/pc.csv'
}

files_li = {
    'Bevy': 'csv/full/laptop_i5/bevy.csv',
    'SoA': 'csv/full/laptop_i5/soa.csv',
    'AoS': 'csv/full/laptop_i5/aos.csv',
    'PC': 'csv/full/laptop_i5/pc.csv'
}

files_hw = {
    'Desktop Linux': 'csv/full/desktop_linux/aos.csv',
    #'Desktop Windows': 'csv/full/desktop_windows/aos.csv',
    #'Laptop Windows': 'csv/full/laptop_windows/aos.csv',
    'Laptop M5': 'csv/full/laptop_m5/aos.csv',
    #'Laptop i5': 'csv/full/laptop_i5/aos.csv'
}

files_aligned = {
    'Bevy': 'csv/full/desktop_linux/bevy.csv',
    'Bevy Aligned': 'csv/full/desktop_linux_aligned/bevy.csv',
    'SoA': 'csv/full/desktop_linux/soa.csv',
    'SoA Aligned': 'csv/full/desktop_linux_aligned/soa.csv',
    'AoS': 'csv/full/desktop_linux/aos.csv',
    'AoS Aligned': 'csv/full/desktop_linux_aligned/aos.csv',
    'PC': 'csv/full/desktop_linux/pc.csv',
    'PC Aligned': 'csv/full/desktop_linux_aligned/pc.csv',
}

files_stride = {
    'M5': 'csv/full/laptop_m5/aos.csv',
    '5800X': 'csv/full/desktop_linux/aos.csv',
}

dataframes = []
for label, file in files_lm.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)
df['time_us'] = df['time_ns'] / df['iterations'] / 1000
df['object_size'] = (df['payload'] + 24) / 1024

start = 0
stop = 27

df = df[df['object_size'].between(start, stop)]
df['object_size'] = (df['object_size'] - start)
df_agg = df.groupby(['architecture', 'object_size'], as_index=False)['time_us'].mean()
order = ['Bevy', 'SoA', 'AoS', 'PC']

sns.set_theme(style="whitegrid")
plt.figure(figsize=(14, 8))

ax = sns.lineplot(
    data=df,
    x='object_size',
    y='time_us',
    hue='architecture',
    hue_order=order,
    style_order=order,
    style='architecture',
    markers=False,
    dashes=False,
    palette="magma",
    errorbar=None,
    alpha=0.9,
)

plt.title('Scenario 2: Performance Impact of Payload Size (Ryzen 7 5800X)', fontsize=16)
#plt.xticks(np.arange(start, stop + 1, 256))
plt.xticks(np.arange(start-start, stop-start + 1, 1))
#plt.ylim(14, 23)
plt.xlabel('Planet Size [Bytes] (+8KiB)', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)
plt.legend(title='Architecture', loc='upper left', fontsize=12)

plt.savefig('svg/S2_detail_.svg', bbox_inches='tight')
plt.show()