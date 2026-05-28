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
    #'Bevy': 'desktop_windows/bevy.csv',
    #'SoA': 'desktop_windows/soa.csv',
    'AoS': 'desktop_windows/aos.csv',
    #'PC': 'desktop_windows/pc.csv'
}

files_lw = {
    #'Bevy': 'laptop_windows/bevy.csv',
    #'SoA': 'laptop_windows/soa.csv',
    'AoS': 'laptop_windows/aos.csv',
    #'PC': 'laptop_windows/pc.csv'
}

files_lm = {
    #'Bevy': 'laptop_m5/bevy.csv',
    #'SoA': 'laptop_m5/soa.csv',
    'AoS': 'laptop_m5/aos.csv',
    #'PC': 'laptop_m5/pc.csv'
}

files_li = {
    #'Bevy': 'laptop_i5/bevy.csv',
    #'SoA': 'laptop_i5/soa.csv',
    'AoS': 'laptop_i5/aos.csv',
    #'PC': 'laptop_i5/pc.csv'
}

files_aos = {
    'Desktop Linux': 'desktop_linux/aos.csv',
    'Desktop Windows': 'desktop_windows/aos.csv',
    'Laptop Windows': 'laptop_windows/aos.csv',
    'Laptop M5': 'laptop_m5/aos.csv',
    'Laptop i5': 'laptop_i5/aos.csv'

}

dataframes = []
for label, file in files_dl.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)
df['time_us'] = df['time_ns'] / df['iterations'] / 1000
df['object_size'] = df['payload'] + 24 #/ 1024

start = 1024
stop = (1024+512)

start_y = 0
stop_y = 20

df = df[df['object_size'].between(start, stop)]

sns.set_theme(style="whitegrid")
plt.figure(figsize=(12, 7))

ax = sns.lineplot(
    data=df,
    x='object_size',
    y='time_us',
    hue='architecture',
    style='architecture',
    markers=False,
    dashes=False,
    palette="magma"
)

plt.title('Scenario 2: Impact of Payload Size', fontsize=15)
plt.xticks(np.arange(start, stop, 32))
plt.ylim(0, 30)
plt.xlabel('Object Size [Byte]', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)
plt.legend(title='Architecture')

plt.savefig('../../svg/S2_Line_full.svg', bbox_inches='tight')
plt.show()