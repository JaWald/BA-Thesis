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

df['time_us'] = df['time_ns'] / df['iterations'] / 1000

sns.set_theme(style="whitegrid")
plt.figure(figsize=(12, 7))

ax = sns.lineplot(
    data=df,
    x='planets',
    y='time_us',
    hue='architecture',
    style='architecture',
    markers=True,
    dashes=False,
    palette="viridis"
)

plt.title('Scenario 1: Compute Bound', fontsize=15)
plt.xlabel('Planet Count', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)

plt.legend(title='Architecture')
plt.savefig('svg/S1_Line.svg', bbox_inches='tight')
plt.show()