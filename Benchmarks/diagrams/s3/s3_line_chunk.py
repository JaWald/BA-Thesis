import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

warmups = '50'
iterations = '50'
samples = '1'
reuse = 'true'
suffix = f'_w-{warmups}_i-{iterations}_s-{samples}_r-{reuse}'

files = {
    'Bevy': f'csv/Bevy{suffix}.csv',
    'SoA': f'csv/SoA_{suffix}.csv',
    'AoS': f'csv/AoS_{suffix}.csv',
    'PC': f'csv/PC___{suffix}.csv'
}

dataframes = []
for label, file in files.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)

df['time_us'] = df['time_ns'] / df['iteration_count'] / 1000

sns.set_theme(style="whitegrid")
plt.figure(figsize=(12, 7))

ax = sns.lineplot(
    data=df,
    x='chunk_size',
    y='time_us',
    hue='architecture',
    style='architecture',
    markers=False,
    dashes=False,
    palette="viridis"
)

plt.title('Scenario 3: Allocation - Chunk Scaling / Reuse / 19,6k', fontsize=15)
plt.xlabel('Chunk Size', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)

plt.legend(title='Architecture')
plt.savefig('svg/S3_Line_Chunk.svg', bbox_inches='tight')
plt.show()