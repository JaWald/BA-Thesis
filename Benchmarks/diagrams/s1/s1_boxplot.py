import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

files = {
    'Bevy': 'csv/bevy.csv',
    'SoA': 'csv/soa.csv',
    'AoS': 'csv/aos.csv',
    'PC': 'csv/pc.csv'
}

dataframes = []

for label, file in files.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)
df['time_ns'] = pd.to_numeric(df['time_ns'], errors='coerce')
df = df.dropna(subset=['time_ns'])
df['time_us'] = df['time_ns'] / df['iterations'] / 1000

sns.set_theme(style="whitegrid")
plt.figure(figsize=(10, 6))

ax = sns.boxplot(
    data=df,
    y='architecture',
    x='time_us',
    hue='architecture',
    palette="muted",
    legend=True
)

plt.title('Scenario 1: Compute Bound')
plt.xlabel('Time per Iteration [µs]')
plt.ylabel('Architecture')

plt.savefig('svg/S1_Boxplot.svg', bbox_inches='tight')
plt.show()