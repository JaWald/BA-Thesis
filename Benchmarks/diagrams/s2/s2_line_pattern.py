import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

files_final = {
    'Bevy': 'csv/final/desktop_linux/bevy.csv',
    'SoA': 'csv/final/desktop_linux/soa.csv',
    'AoS': 'csv/final/desktop_linux/aos.csv',
    'PC': 'csv/final/desktop_linux/pc.csv'
}

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

warmups = '200'
iterations = '200'
samples = '5'
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

df = pd.concat(dataframes, ignore_index=True)
df['time_us'] = df['time_ns'] / df['iteration_count'] / 1000

start = 2048
stop = 2560

df = df[df['payload'].between(start, stop)]
df_agg = df.groupby(['architecture', 'payload'], as_index=False)['time_us'].mean()
order = ['Bevy', 'SoA', 'AoS', 'PC']

sns.set_theme(style="whitegrid")
plt.figure(figsize=(7, 4.5))

ax = sns.lineplot(
    data=df,
    x='payload',
    y='time_us',
    hue='architecture',
    hue_order=order,
    style_order=order,
    style='architecture',
    markers=False,
    dashes=False,
    palette="magma",
    errorbar=None,
    alpha=1.0,
)

plt.xticks(np.arange(start, stop + 1, 64))
plt.xlabel('Payload Size [Bytes]', fontsize=11)

plt.ylabel('Average Time per Iteration [µs]', fontsize=11)
plt.legend(title='Architecture', loc='upper left', fontsize=11)

plt.savefig('svg/S2_pattern.pdf', bbox_inches='tight')
plt.show()