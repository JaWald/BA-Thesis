import numpy as np
import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

files_pop = {
    'Bevy': 'csv/pop/bevy.csv',
    'SoA': 'csv/pop/soa.csv',
    'AoS': 'csv/pop/aos.csv',
    'PC': 'csv/pop/pc.csv'
}

files_swap_remove = {
    'Bevy': 'csv/swap_remove/bevy.csv',
    'SoA': 'csv/swap_remove/soa.csv',
    'AoS': 'csv/swap_remove/aos.csv',
    'PC': 'csv/swap_remove/pc.csv'
}

files_test = {
    'Bevy': 'csv/bevy.csv',
    'SoA': 'csv/soa.csv',
    'AoS': 'csv/aos.csv',
    'PC': 'csv/pc.csv'
}

dataframes = []
for label, file in files_test.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)

df['time_us'] = df['time_ns'] / df['iterations'] / 1000

df['object_size'] = df['payload'] + 24 #/ 1024
start = 0
stop = 20480
df = df[df['object_size'].between(start, stop)]

sns.set_theme(style="whitegrid")
plt.figure(figsize=(12, 7))

ax = sns.lineplot(
    data=df,
    x='payload',
    y='time_us',
    hue='architecture',
    style='architecture',
    markers=False,
    dashes=False,
    palette="magma"
)

plt.title('Scenario 3: Allocation - Payload Scaling / Drop', fontsize=15)
plt.xlabel('Payload Size [Bytes]', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)
plt.xticks(np.arange(start, stop + 1, 2048))
plt.legend(title='Architecture')
plt.savefig('svg/S3_Line_Payload_____.svg', bbox_inches='tight')
plt.show()