import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

warmups = '50'
iterations = '50'
samples = '1'
reuse = 'true'
variant = 'Reuse' if reuse == 'true' else 'Drop'

suffix = f'_w-{warmups}_i-{iterations}_s-{samples}_r-{reuse}'

files = {
    'Bevy': f'csv/both_linux/Bevy{suffix}.csv',
    'SoA': f'csv/both_linux/SoA_{suffix}.csv',
    'AoS': f'csv/both_linux/AoS_{suffix}.csv',
    'PC': f'csv/both_linux/PC___{suffix}.csv'
}

payloads_to_show = [4000]

dataframes = []
for label, file in files.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)
df['time_us'] = df['time_ns'] / df['iteration_count'] / 1000

df = df[df['payload'].isin(payloads_to_show)]
df['Payload'] = df['payload'].apply(lambda p: f'{p // 1000}k' if p >= 1000 else f'{p} B')

sns.set_theme(style="whitegrid")
plt.figure(figsize=(13, 8))

ax = sns.lineplot(
    data=df,
    x='chunk_size',
    y='time_us',
    hue='architecture',      # colour = architecture
    style='Payload',         # dash pattern = payload
    markers=False,
    palette="magma"
)

plt.title(f'Scenario 3: Allocation - Chunk Scaling / {variant}', fontsize=15)
plt.xlabel('Chunk Size', fontsize=12)
plt.ylabel('Average Time per Iteration [µs]', fontsize=12)

plt.legend(title='Architecture / Payload', loc='upper left')
plt.savefig('svg/S3_Line_Chunk_all_payloads.svg', bbox_inches='tight')
plt.show()