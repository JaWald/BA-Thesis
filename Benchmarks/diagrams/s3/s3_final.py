import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt

warmups = '100'
iterations = '50'
samples = '5'
reuse = 'false'
variant = 'reuse' if reuse == 'true' else 'drop'

suffix = f'_w-{warmups}_i-{iterations}_s-{samples}_r-{reuse}'

files = {
    'PC':   f'csv/PC___{suffix}.csv',
    'AoS':  f'csv/AoS_{suffix}.csv',
    'SoA':  f'csv/SoA_{suffix}.csv',
    'Bevy': f'csv/Bevy{suffix}.csv',
}

CHUNK = 500

dataframes = []
for label, file in files.items():
    temp_df = pd.read_csv(file)
    temp_df['architecture'] = label
    dataframes.append(temp_df)

df = pd.concat(dataframes, ignore_index=True)
df['time_us'] = df['time_ns'] / df['iteration_count'] / 1000
df = df[df['chunk_size'] == CHUNK]

order = ['Bevy', 'SoA', 'AoS', 'PC']

sns.set_theme(style="whitegrid")
plt.figure(figsize=(7, 4.5))

ax = sns.lineplot(
    data=df,
    x='payload',
    y='time_us',
    hue='architecture', hue_order=order,
    style='architecture', style_order=order,
    markers=False, dashes=False,
    palette="magma",
    errorbar=None,
    linewidth=1.25,
)
ax.set_yscale('log')

plt.xlabel('Payload Size [Bytes]', fontsize=11)
plt.ylabel('Average Time per Iteration [µs]', fontsize=11)
plt.ylim(, 10000)

plt.legend(title='Architecture', fontsize=9, loc='lower right')
plt.savefig(f'svg/S3_{variant}.pdf', bbox_inches='tight')
plt.show()